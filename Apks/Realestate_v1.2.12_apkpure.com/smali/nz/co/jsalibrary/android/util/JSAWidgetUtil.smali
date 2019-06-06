.class public Lnz/co/jsalibrary/android/util/JSAWidgetUtil;
.super Ljava/lang/Object;
.source "JSAWidgetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setMaxLength(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "length"    # I

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/text/InputFilter;>;"
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 23
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v5, v0, Landroid/text/InputFilter$LengthFilter;

    if-nez v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "filter":Landroid/text/InputFilter;
    :cond_1
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const-class v2, Landroid/text/InputFilter;

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/InputFilter;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 26
    return-void
.end method
