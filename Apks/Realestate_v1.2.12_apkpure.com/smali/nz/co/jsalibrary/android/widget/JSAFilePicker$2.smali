.class Lnz/co/jsalibrary/android/widget/JSAFilePicker$2;
.super Ljava/lang/Object;
.source "JSAFilePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/JSAFilePicker;->initialiseViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/JSAFilePicker;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    .prologue
    .line 123
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$2;->this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAFilePicker$2;->this$0:Lnz/co/jsalibrary/android/widget/JSAFilePicker;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAFilePicker;->onActionButtonClick()V

    .line 126
    return-void
.end method
