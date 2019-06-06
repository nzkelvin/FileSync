.class Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;
.super Ljava/lang/Object;
.source "JSAResourceUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringAttributeResourceValueResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;

    .prologue
    .line 363
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;->resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/String;
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "index"    # I

    .prologue
    .line 367
    invoke-interface {p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
