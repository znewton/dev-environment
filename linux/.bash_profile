# --------
# Env Vars
# --------
export LS_COLORS=$LS_COLORS:'di=38;5;110:'

export EDITOR=vim

export YOUTUBE_API_KEY="AIzaSyCtYWn6WPlcE6hfCkO1tdFIoQzy0CxVQho"

setterm -blength 0

# -------
# On Boot
# -------

GREY='\033[38;5;244m'
BLUE='\033[38;5;45m'
NC='\033[0m'
clear
echo -en "
${GREY}           ${BLUE}              ## ${GREY}
${GREY}       ##  ${BLUE}             ##  ${GREY}    ##
${GREY}      ##   ${BLUE}            ##   ${GREY}     ##
${GREY}     ##    ${BLUE}           ##    ${GREY}      ##
${GREY}    ##     ${BLUE}          ##     ${GREY}       ##
${GREY}   ##      ${BLUE}         ##      ${GREY}        ##
${GREY}  ##       ${BLUE}        ##       ${GREY}         ##
${GREY}   ##      ${BLUE}       ##        ${GREY}        ##
${GREY}    ##     ${BLUE}      ##         ${GREY}       ##
${GREY}     ##    ${BLUE}     ##          ${GREY}      ##
${GREY}      ##   ${BLUE}    ##           ${GREY}     ##
${GREY}       ##  ${BLUE}   ##            ${GREY}    ##
${GREY}           ${BLUE}  ##             ${GREY}

${NC}"

