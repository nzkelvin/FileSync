.class Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;
.super Ljava/lang/Object;
.source "JSAPinEntryWidget.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    .prologue
    .line 212
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$5;->this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 214
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    .line 220
    :goto_0
    return-object v1

    .line 215
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 216
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    const-string v1, ""

    goto :goto_0

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
