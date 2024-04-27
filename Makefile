NAME = template
VERSION = 0.0.0
PREFIX ?= $(HOME)/.local

GHC ?= ghc
GHCFLAGS = -Wall -Werror

SRC = src/Main.hs
OBJ = $(SRC:%.hs=%.o)
INCLUDE = -isrc

all: $(NAME)

$(NAME): $(OBJ)
    $(GHC) $(GHCFLAGS) $(INCLUDE) -outputdir out -o $(NAME) $(OBJ)

.hs.o:
    $(GHC) -c $
