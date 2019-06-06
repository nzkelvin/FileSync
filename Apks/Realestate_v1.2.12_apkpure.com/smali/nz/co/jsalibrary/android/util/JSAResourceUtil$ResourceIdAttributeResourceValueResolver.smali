.class Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;
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
    name = "ResourceIdAttributeResourceValueResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;

    .prologue
    .line 425
    invoke-direct {p0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "index"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;->resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
