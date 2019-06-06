.class Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;
.super Ljava/lang/Object;
.source "JSANumberPickerCompat.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->initialise(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 605
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 607
    if-eqz p2, :cond_0

    .line 608
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 613
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$000(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 611
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$2;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$100(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Landroid/view/View;)V

    goto :goto_0
.end method
