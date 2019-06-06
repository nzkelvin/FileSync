.class Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;
.super Ljava/lang/Object;
.source "JSAAnimatingPagerFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemInfo"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;

.field private mParent:Landroid/view/ViewGroup;

.field private mPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$1;

    .prologue
    .line 261
    invoke-direct {p0}, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    .prologue
    .line 261
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 261
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->mParent:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$200(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    .prologue
    .line 261
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 261
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->mObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;)I
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;

    .prologue
    .line 261
    iget v0, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->mPosition:I

    return v0
.end method

.method static synthetic access$402(Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;I)I
    .locals 0
    .param p0, "x0"    # Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;
    .param p1, "x1"    # I

    .prologue
    .line 261
    iput p1, p0, Lnz/co/jsalibrary/android/widget/JSAAnimatingPagerFrameLayout$ItemInfo;->mPosition:I

    return p1
.end method
