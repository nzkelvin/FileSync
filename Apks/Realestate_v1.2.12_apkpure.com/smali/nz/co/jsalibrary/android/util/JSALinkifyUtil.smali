.class public final Lnz/co/jsalibrary/android/util/JSALinkifyUtil;
.super Ljava/lang/Object;
.source "JSALinkifyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;,
        Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hijackLinks(Landroid/widget/TextView;Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "linkClickListener"    # Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 24
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 26
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 25
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lnz/co/jsalibrary/android/util/JSALinkifyUtil;->hijackUrlLinks(Landroid/text/Spannable;Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;)V

    goto :goto_0
.end method

.method public static hijackUrlLinks(Landroid/text/Spannable;Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;)V
    .locals 9
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "linkClickListener"    # Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;

    .prologue
    .line 48
    const/4 v6, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 49
    .local v3, "oldSpans":[Landroid/text/style/URLSpan;
    array-length v6, v3

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 50
    aget-object v2, v3, v1

    .line 51
    .local v2, "oldSpan":Landroid/text/style/URLSpan;
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 52
    .local v5, "start":I
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 53
    .local v0, "end":I
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 54
    new-instance v4, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;

    invoke-interface {p0, v5, v0}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, p1, v6, v7}, Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;-><init>(Lnz/co/jsalibrary/android/util/JSALinkifyUtil$OnLinkClickListener;Ljava/lang/CharSequence;Lnz/co/jsalibrary/android/util/JSALinkifyUtil$1;)V

    .line 55
    .local v4, "span":Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;
    const/16 v6, 0x21

    invoke-interface {p0, v4, v5, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 49
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 57
    .end local v0    # "end":I
    .end local v2    # "oldSpan":Landroid/text/style/URLSpan;
    .end local v4    # "span":Lnz/co/jsalibrary/android/util/JSALinkifyUtil$LinkClickableSpan;
    .end local v5    # "start":I
    :cond_0
    return-void
.end method
