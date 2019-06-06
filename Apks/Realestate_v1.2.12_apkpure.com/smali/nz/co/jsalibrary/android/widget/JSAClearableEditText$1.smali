.class Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;
.super Ljava/lang/Object;
.source "JSAClearableEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 80
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onProxiedTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mProxiedOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mProxiedOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->onProxiedTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->onProxiedTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    iget-object v0, v0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->onProxiedTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    iget-object v2, v2, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->onProxiedTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAClearableEditText$1;->this$0:Lnz/co/jsalibrary/android/widget/JSAClearableEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/widget/JSAClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method
