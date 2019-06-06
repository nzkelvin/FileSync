.class Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;
.super Ljava/lang/Object;
.source "JSANumberPickerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 2026
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2030
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1600(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2031
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1700(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V

    .line 2032
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$BeginSoftInputOnLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1802(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)Z

    goto :goto_0
.end method
