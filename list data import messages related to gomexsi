*the code below finds data import messages (issues) related to gomexsi.

rglobi::query('START study = node:studies("*:*")
MATCH study-[:HAS_LOG_MESSAGE]->msg
WHERE study.source =~ ".*gomexsi.*"
RETURN msg.level as `log level`, msg.msg as `log message`, study.title as `short reference`, study.source as `source`')
