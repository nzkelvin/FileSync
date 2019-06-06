.class Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;
.super Ljava/lang/Object;
.source "JSAPinEntryWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field protected mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "e"    # Landroid/widget/EditText;

    .prologue
    .line 260
    iput-object p1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 262
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->focusNext()V

    .line 287
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 277
    return-void
.end method

.method public focusNext()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;

    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->findNextFocus(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "nextFocusView":Landroid/view/View;
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 274
    return-void
.end method

.method public focusPrevious()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->this$0:Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;

    iget-object v2, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;->findPreviousFocus(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "nextFocusView":Landroid/view/View;
    iget-object v1, p0, Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$CustomTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 268
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 280
    return-void
.end method
