.class public Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$CustomEditText;
.super Landroid/widget/EditText;
.source "JSANumberPickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2011
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2012
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 2016
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2017
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2018
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$CustomEditText;->clearFocus()V

    .line 2020
    :cond_0
    return-void
.end method
