.class Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 1978
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 1978
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$402(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;
    .param p1, "x1"    # I

    .prologue
    .line 1978
    iput p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1984
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 1985
    return-void
.end method
