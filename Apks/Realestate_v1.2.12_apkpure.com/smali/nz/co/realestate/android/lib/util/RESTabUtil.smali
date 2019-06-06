.class public Lnz/co/realestate/android/lib/util/RESTabUtil;
.super Ljava/lang/Object;
.source "RESTabUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTab(Landroid/support/v4/app/FragmentActivity;Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/TabHost;I)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "manager"    # Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "tabHost"    # Landroid/widget/TabHost;
    .param p6, "imageResource"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p5, p2, p3, p6}, Lnz/co/realestate/android/lib/util/RESTabUtil;->createTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 43
    .local v0, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p1, v0, p4}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/content/Intent;)Z

    .line 44
    return-void
.end method

.method public static addTab(Landroid/support/v4/app/FragmentActivity;Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/widget/TabHost;I)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "manager"    # Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p5, "tabHost"    # Landroid/widget/TabHost;
    .param p6, "imageResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/widget/TabHost;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v2, 0x0

    .line 31
    invoke-static {p0}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->supportsActionBar(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1, p2, p3, p4, v2}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Z

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {p0, p5, p2, p3, p6}, Lnz/co/realestate/android/lib/util/RESTabUtil;->createTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 38
    .local v0, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p1, v0, p4, v2}, Lnz/co/jsalibrary/android/sherlock/app/JSATabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public static createTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 11
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "imageResource"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    .line 52
    .local v9, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lnz/co/realestate/android/lib/R$layout;->tab_indicator:I

    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 53
    .local v10, "tabIndicator":Landroid/view/View;
    sget v1, Lnz/co/realestate/android/lib/R$id;->textview:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v1, Lnz/co/realestate/android/lib/R$id;->imageview:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 56
    .local v7, "image":Landroid/widget/ImageView;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->loadBitmapResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 57
    .local v8, "mask":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 58
    .local v6, "background":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    invoke-static {v6, v8}, Lnz/co/jsalibrary/android/util/JSABitmapUtil;->maskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 65
    return-object v9
.end method

.method public static sizeTabHost(Landroid/widget/TabHost;)V
    .locals 7
    .param p0, "tabHost"    # Landroid/widget/TabHost;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    if-nez p0, :cond_1

    .line 82
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    .line 75
    .local v3, "tabWidget":Landroid/widget/TabWidget;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 76
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    .line 75
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 78
    .local v2, "tabLayout":Landroid/widget/LinearLayout;
    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {p0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSADimensionUtil;->getPixelsForDips(FLandroid/content/Context;)I

    move-result v1

    .line 79
    .local v1, "tabHeight":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1
.end method
