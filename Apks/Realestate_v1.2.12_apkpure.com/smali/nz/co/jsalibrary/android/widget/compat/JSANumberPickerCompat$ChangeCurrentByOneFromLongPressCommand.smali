.class Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 1991
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 1991
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 1995
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 1996
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2000
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-boolean v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1400(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Z)V

    .line 2001
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$1500(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2002
    return-void
.end method
