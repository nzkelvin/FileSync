.class Lnz/co/jsalibrary/android/util/JSAResourceUtil$FloatAttributeResourceValueResolver;
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
    name = "FloatAttributeResourceValueResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Float;
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "index"    # I

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-interface {p2, p3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeFloatValue(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$FloatAttributeResourceValueResolver;->resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
