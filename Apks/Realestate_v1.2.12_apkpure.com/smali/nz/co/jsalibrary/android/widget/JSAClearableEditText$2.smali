.class Lnz/co/jsalibrary/android/widget/JSAClearableEditText$2;
.super Ljava/lang/Object;
.source "JSAClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->initialise()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAClearableEditText;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    .prologue
    .line 95
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$2;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 97
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$2;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->updateClearDrawable()V

    return-void
.end method
