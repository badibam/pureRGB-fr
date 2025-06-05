#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script d'automatisation corrigé pour la traduction de pureRGB-fr
Utilise UNIQUEMENT les traductions extraites directement de pokered-fr
Aucun dictionnaire générique - extraction directe des fichiers sources
"""

import os
import re
import shutil
from pathlib import Path
from typing import Dict, List, Tuple, Set
import difflib

class CorrectPokemonTranslationAutomator:
    def __init__(self, pokered_fr_path: str, purergb_fr_path: str):
        self.pokered_fr_path = Path(pokered_fr_path)
        self.purergb_fr_path = Path(purergb_fr_path)
        
        # Dictionnaires pour stocker les traductions extraites de pokered-fr
        self.simple_translations = {}  # Pour li "ENGLISH" -> li "FRANÇAIS"
        self.db_translations = {}      # Pour db "ENGLISH@@" -> db "FRANÇAIS@@"
        self.menu_translations = {}    # Pour les menus (NEW GAME, etc.)
        
        # Statistiques
        self.stats = {
            'files_processed': 0,
            'translations_extracted': 0,
            'translations_applied': 0,
            'files_modified': 0
        }
    
    def extract_simple_translations_from_file(self, pokered_file: Path, purergb_file: Path):
        """Extrait les traductions simples en comparant un fichier pokered-fr avec pureRGB-fr"""
        if not pokered_file.exists() or not purergb_file.exists():
            return
        
        try:
            with open(pokered_file, 'r', encoding='utf-8') as f:
                pokered_content = f.read()
            with open(purergb_file, 'r', encoding='utf-8') as f:
                purergb_content = f.read()
        except:
            print(f"Erreur lecture: {pokered_file} ou {purergb_file}")
            return
        
        # Extraire les patterns li "..." 
        pokered_li_pattern = r'li\s+"([^"]+)"'
        purergb_li_pattern = r'li\s+"([^"]+)"'
        
        pokered_matches = re.findall(pokered_li_pattern, pokered_content)
        purergb_matches = re.findall(purergb_li_pattern, purergb_content)
        
        # Si même nombre de lignes li, on peut mapper
        if len(pokered_matches) == len(purergb_matches):
            for english, french in zip(purergb_matches, pokered_matches):
                if english != french and self.is_english_text(english):
                    self.simple_translations[english] = french
                    self.stats['translations_extracted'] += 1
        
        # Extraire les patterns db "...@@@"
        pokered_db_pattern = r'db\s+"([^"]+)"'
        purergb_db_pattern = r'db\s+"([^"]+)"'
        
        pokered_db_matches = re.findall(pokered_db_pattern, pokered_content)
        purergb_db_matches = re.findall(purergb_db_pattern, purergb_content)
        
        # Mapper les traductions db
        if len(pokered_db_matches) == len(purergb_db_matches):
            for english, french in zip(purergb_db_matches, pokered_db_matches):
                if english != french and self.is_english_text(english):
                    self.db_translations[english] = french
                    self.stats['translations_extracted'] += 1
    
    def extract_menu_translations(self):
        """Extrait les traductions des menus principaux depuis pokered-fr"""
        # Fichier menu principal
        pokered_menu = self.pokered_fr_path / 'engine' / 'menus' / 'main_menu.asm'
        
        if not pokered_menu.exists():
            print(f"Fichier menu pokered-fr introuvable: {pokered_menu}")
            return
        
        try:
            with open(pokered_menu, 'r', encoding='utf-8') as f:
                content = f.read()
        except:
            print(f"Erreur lecture: {pokered_menu}")
            return
        
        # Extraire les traductions de menu spécifiques
        menu_patterns = {
            r'NewGameText:\s*db\s+"([^"]+)"': 'NEW GAME',
            r'ContinueText:\s*db\s+"([^"]+)"': 'CONTINUE',
            r'OptionMenuCancelText:\s*db\s+"([^"]+)"': 'CANCEL',
            r'CableClubOptionsText:.*?db\s+"([^"]+)".*?db\s+"([^"]+)".*?db\s+"([^"]+)"': 'CABLE_CLUB'
        }
        
        for pattern, context in menu_patterns.items():
            matches = re.search(pattern, content, re.DOTALL)
            if matches:
                if context == 'NEW GAME':
                    self.menu_translations['NEW GAME'] = matches.group(1)
                    self.stats['translations_extracted'] += 1
                elif context == 'CONTINUE':
                    self.menu_translations['CONTINUE'] = matches.group(1)
                    self.stats['translations_extracted'] += 1
                elif context == 'CANCEL':
                    self.menu_translations['CANCEL'] = matches.group(1)
                    self.stats['translations_extracted'] += 1
    
    def is_english_text(self, text: str) -> bool:
        """Détermine si un texte est probablement en anglais"""
        english_indicators = [
            'THE', 'AND', 'OF', 'TO', 'A', 'IN', 'IS', 'IT', 'YOU', 'THAT',
            'ATTACK', 'DEFENSE', 'SPEED', 'POKEMON', 'MOVE', 'TYPE',
            'FIRE', 'WATER', 'GRASS', 'ELECTRIC', 'NORMAL', 'FIGHTING'
        ]
        
        text_upper = text.upper()
        for indicator in english_indicators:
            if indicator in text_upper:
                return True
        
        # Éviter les textes déjà français
        french_indicators = ['LE', 'LA', 'DU', 'DE', 'ET', 'À', 'DANS', 'SUR', 'AVEC']
        for indicator in french_indicators:
            if indicator in text_upper:
                return False
        
        return len(text) > 2  # Textes courts considérés comme anglais
    
    def extract_all_translations(self):
        """Extrait toutes les traductions depuis pokered-fr"""
        print("Extraction des traductions depuis pokered-fr...")
        
        # 1. Extraire traductions de menu
        self.extract_menu_translations()
        
        # 2. Fichiers de données importantes
        important_files = [
            ('data/moves/names.asm', 'data/moves/names.asm'),
            ('data/pokemon/names.asm', 'data/pokemon/names.asm'),
            ('data/trainers/names.asm', 'data/trainers/names.asm'),
            ('data/types/names.asm', 'data/types/names.asm'),
            ('data/items/names.asm', 'data/items/names.asm'),
        ]
        
        for pokered_rel, purergb_rel in important_files:
            pokered_file = self.pokered_fr_path / pokered_rel
            purergb_file = self.purergb_fr_path / purergb_rel
            
            if pokered_file.exists() and purergb_file.exists():
                self.extract_simple_translations_from_file(pokered_file, purergb_file)
                self.stats['files_processed'] += 1
        
        print(f"Traductions extraites: {self.stats['translations_extracted']} depuis {self.stats['files_processed']} fichiers")
    
    def backup_file(self, file_path: Path) -> None:
        """Crée une sauvegarde du fichier original"""
        backup_path = file_path.with_suffix(file_path.suffix + '.bak')
        if not backup_path.exists():
            shutil.copy2(file_path, backup_path)
    
    def apply_translations_to_file(self, file_path: Path) -> int:
        """Applique les traductions à un fichier"""
        if not file_path.exists():
            return 0
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                content = f.read()
        except:
            print(f"Erreur lecture: {file_path}")
            return 0
        
        original_content = content
        changes = 0
        
        # 1. Appliquer traductions li "..."
        for english, french in self.simple_translations.items():
            pattern = rf'li\s+"({re.escape(english)})"'
            replacement = f'li "{french}"'
            if re.search(pattern, content):
                content = re.sub(pattern, replacement, content)
                changes += 1
        
        # 2. Appliquer traductions db "..."
        for english, french in self.db_translations.items():
            pattern = rf'db\s+"({re.escape(english)})(@*)"'
            # Conserver le même padding
            def replacement_func(match):
                padding = match.group(2)
                # Ajuster le padding si nécessaire
                padding_needed = len(english) - len(french)
                if padding_needed > 0:
                    new_padding = padding + '@' * padding_needed
                else:
                    new_padding = padding[:len(padding) + padding_needed] if padding else ''
                return f'db "{french}{new_padding}"'
            
            if re.search(pattern, content):
                content = re.sub(pattern, replacement_func, content)
                changes += 1
        
        # 3. Appliquer traductions de menu
        for english, french in self.menu_translations.items():
            pattern = rf'db\s+"({re.escape(english)})"'
            replacement = f'db "{french}"'
            if re.search(pattern, content):
                content = re.sub(pattern, replacement, content)
                changes += 1
        
        # Sauvegarder les changements
        if content != original_content and changes > 0:
            self.backup_file(file_path)
            try:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(content)
                return changes
            except:
                print(f"Erreur écriture: {file_path}")
        
        return 0
    
    def apply_translations(self):
        """Applique toutes les traductions aux fichiers pureRGB-fr"""
        print("Application des traductions à pureRGB-fr...")
        
        # Fichiers à traiter
        files_to_process = []
        
        # Ajouter fichiers de données
        data_patterns = [
            'data/moves/names.asm',
            'data/pokemon/names.asm', 
            'data/trainers/names.asm',
            'data/types/names.asm',
            'data/items/names.asm',
            'engine/menus/main_menu.asm'
        ]
        
        for pattern in data_patterns:
            file_path = self.purergb_fr_path / pattern
            if file_path.exists():
                files_to_process.append(file_path)
        
        # Appliquer traductions
        for file_path in files_to_process:
            changes = self.apply_translations_to_file(file_path)
            if changes > 0:
                self.stats['translations_applied'] += changes
                self.stats['files_modified'] += 1
                print(f"✓ {file_path.name}: {changes} traductions appliquées")
        
        print(f"\\nTerminé! {self.stats['translations_applied']} traductions appliquées à {self.stats['files_modified']} fichiers")
    
    def run(self):
        """Exécute l'automatisation complète"""
        print("=== AUTOMATISATION CORRECTE DE TRADUCTION PURERGB-FR ===")
        print("Utilise UNIQUEMENT les traductions de pokered-fr\\n")
        
        # Vérifications
        if not self.pokered_fr_path.exists():
            print(f"Erreur: pokered-fr introuvable à {self.pokered_fr_path}")
            return
        
        if not self.purergb_fr_path.exists():
            print(f"Erreur: pureRGB-fr introuvable à {self.purergb_fr_path}")
            return
        
        # Extraction et application
        self.extract_all_translations()
        
        if self.stats['translations_extracted'] == 0:
            print("Aucune traduction extraite. Vérifiez les chemins.")
            return
        
        self.apply_translations()
        
        print("\\n=== STATISTIQUES FINALES ===")
        print(f"Traductions extraites de pokered-fr: {self.stats['translations_extracted']}")
        print(f"Traductions appliquées: {self.stats['translations_applied']}")
        print(f"Fichiers modifiés: {self.stats['files_modified']}")


def main():
    # Chemins
    pokered_fr_path = "/mnt/data/INFORMATIQUE/Pokemon/pokered-fr"
    purergb_fr_path = "/mnt/data/INFORMATIQUE/Pokemon/pureRGB-fr"
    
    # Lancer l'automatisation
    automator = CorrectPokemonTranslationAutomator(pokered_fr_path, purergb_fr_path)
    automator.run()


if __name__ == "__main__":
    main()