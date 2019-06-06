.class Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$1;
.super Ljava/lang/Object;
.source "JSAAlertDialogFragment.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->setMultiChoiceItems([I[Z)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    .prologue
    .line 261
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$1;->map(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "itemId"    # Ljava/lang/Integer;

    .prologue
    .line 263
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$1;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;->access$000(Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
