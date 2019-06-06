.class public Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;
.super Ljava/lang/Object;
.source "JSACustomRowWrapper.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mRow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;->mRow:Landroid/view/View;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;->mRow:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRow()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;->mRow:Landroid/view/View;

    return-object v0
.end method
