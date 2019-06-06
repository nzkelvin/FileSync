.class Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "JSANumberPickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    .prologue
    .line 1817
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v5, 0x0

    .line 1833
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v6}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$600(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1834
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1835
    .local v0, "filtered":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1836
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1839
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1840
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v6

    invoke-interface {p4, p6, v6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1842
    .local v1, "result":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1872
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1845
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v5, v1}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$700(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;Ljava/lang/String;)I

    move-result v3

    .line 1852
    .local v3, "val":I
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v5}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$800(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)I

    move-result v5

    if-le v3, v5, :cond_2

    .line 1853
    const-string v1, ""

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 1855
    goto :goto_0

    .line 1858
    .end local v0    # "filtered":Ljava/lang/CharSequence;
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "val":I
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    .restart local v0    # "filtered":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1860
    const-string v1, ""

    goto :goto_0

    .line 1862
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v5, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1863
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p4, p6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1864
    .restart local v1    # "result":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1865
    .local v2, "str":Ljava/lang/String;
    iget-object v6, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-static {v6}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$600(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v3, v6, v5

    .line 1866
    .local v3, "val":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1867
    .local v4, "valLowerCase":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1868
    iget-object v5, p0, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat$InputTextFilter;->this$0:Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v6, v7}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$900(Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;II)V

    .line 1869
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p5, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    .line 1865
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1872
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "valLowerCase":Ljava/lang/String;
    :cond_6
    const-string v1, ""

    goto/16 :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 1827
    invoke-static {}, Lnz/co/jsalibrary/android/widget/compat/JSANumberPickerCompat;->access$500()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1822
    const/4 v0, 0x1

    return v0
.end method
