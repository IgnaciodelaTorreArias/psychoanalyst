from pathlib import Path
import psychoanalyst as ps

# Basic configuration to test data
ps.CommonData.year = 2024
ps.CommonData.cycle = "A"
ps.CommonData.semester = 1

ps.CommonData.json_path = Path.cwd() / "Results" / "default.json"
ps.CommonData.figures_path = Path.cwd() / "Results" / "Graphs" / "default.png"

ps.CommonData.exception_reporter = lambda e: print(e)
ps.CommonData.progress_reporter = lambda s: print(s)

ps.CsvLoader.source = Path.cwd() / "Exams" / "default.csv"
ps.CsvSaver.destiny = Path.cwd() / "Results" / "default.csv"

ps.SqliteLoader.source = Path.cwd() / "Results" / "default.db"
ps.SqliteSaver.destiny = Path.cwd() / "Results" / "default.db"

"""
Based on the analysis pipeline tested build a corresponding testing pipeline.
"""