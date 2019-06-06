.class Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$1;
.super Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;
    .param p2, "e"    # Landroid/widget/EditText;

    .prologue
    .line 147
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$1;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;-><init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$1;->focusNext()V

    .line 156
    :cond_0
    return-void
.end method
