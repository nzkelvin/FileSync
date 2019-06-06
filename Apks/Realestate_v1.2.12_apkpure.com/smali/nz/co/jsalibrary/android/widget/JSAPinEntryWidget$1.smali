.class Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$1;
.super Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$CustomTextWatcher;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;->initialiseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;
    .param p2, "e"    # Landroid/widget/EditText;

    .prologue
    .line 138
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$CustomTextWatcher;-><init>(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$1;->focusNext()V

    .line 146
    :cond_0
    return-void
.end method
