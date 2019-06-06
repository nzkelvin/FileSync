.class Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$2;
.super Ljava/lang/Object;
.source "JSADateTimeDialog.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    .prologue
    .line 162
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$2;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog$2;->this$0:Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;

    invoke-static {v0, p2, p3}, Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;->access$100(Lnz/co/jsalibrary/android/widget/dialog/JSADateTimeDialog;II)V

    .line 165
    return-void
.end method
