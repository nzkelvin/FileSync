.class Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "JSALinkifyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSALinkifyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkClickableSpan"
.end annotation


# instance fields
.field private mLink:Ljava/lang/CharSequence;

.field private mLinkClickListener:Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;


# direct methods
.method private constructor <init>(Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "linkClickListener"    # Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;
    .param p2, "link"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 64
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;->mLinkClickListener:Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;

    .line 65
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;->mLink:Ljava/lang/CharSequence;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/util/JSALinkifyUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Lnz/co/jsalibrary/android/util/JSALinkifyUtil$1;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;-><init>(Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;->mLinkClickListener:Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;->mLink:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;->onLinkClick(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
