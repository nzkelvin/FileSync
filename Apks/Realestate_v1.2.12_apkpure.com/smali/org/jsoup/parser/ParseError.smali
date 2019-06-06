.class Lorg/jsoup/parser/ParseError;
.super Ljava/lang/Object;
.source "ParseError.java"


# instance fields
.field private c:C

.field private errorMsg:Ljava/lang/String;

.field private pos:I

.field private token:Lorg/jsoup/parser/Token;

.field private tokeniserState:Lorg/jsoup/parser/TokeniserState;

.field private treeBuilderState:Lorg/jsoup/parser/TreeBuilderState;


# direct methods
.method constructor <init>(Ljava/lang/String;CLorg/jsoup/parser/TokeniserState;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "c"    # C
    .param p3, "tokeniserState"    # Lorg/jsoup/parser/TokeniserState;
    .param p4, "pos"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 17
    iput-char p2, p0, Lorg/jsoup/parser/ParseError;->c:C

    .line 18
    iput-object p3, p0, Lorg/jsoup/parser/ParseError;->tokeniserState:Lorg/jsoup/parser/TokeniserState;

    .line 19
    iput p4, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 20
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 30
    iput p2, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/jsoup/parser/TokeniserState;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "tokeniserState"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "pos"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/jsoup/parser/ParseError;->tokeniserState:Lorg/jsoup/parser/TokeniserState;

    .line 25
    iput p3, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/jsoup/parser/TreeBuilderState;Lorg/jsoup/parser/Token;I)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "treeBuilderState"    # Lorg/jsoup/parser/TreeBuilderState;
    .param p3, "token"    # Lorg/jsoup/parser/Token;
    .param p4, "pos"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/jsoup/parser/ParseError;->treeBuilderState:Lorg/jsoup/parser/TreeBuilderState;

    .line 36
    iput-object p3, p0, Lorg/jsoup/parser/ParseError;->token:Lorg/jsoup/parser/Token;

    .line 37
    iput p4, p0, Lorg/jsoup/parser/ParseError;->pos:I

    .line 38
    return-void
.end method


# virtual methods
.method getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/jsoup/parser/ParseError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method getPos()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/jsoup/parser/ParseError;->pos:I

    return v0
.end method
