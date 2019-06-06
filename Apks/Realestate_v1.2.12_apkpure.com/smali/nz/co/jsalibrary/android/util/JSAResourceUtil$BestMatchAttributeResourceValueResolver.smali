.class Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;
.super Ljava/lang/Object;
.source "JSAResourceUtil.java"

# interfaces
.implements Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAResourceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BestMatchAttributeResourceValueResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

.field private final mResources:Landroid/content/res/Resources;

.field private final mReusableTypedValue:Landroid/util/TypedValue;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "constraints"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mResources:Landroid/content/res/Resources;

    .line 448
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    .line 449
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .param p3, "x2"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;-><init>(Landroid/content/res/Resources;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)V

    return-void
.end method

.method private resolveResource(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 536
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v2, p2, v3, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 538
    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    iget v2, v2, Landroid/util/TypedValue;->type:I

    sparse-switch v2, :sswitch_data_0

    move-object v0, v1

    .line 584
    :goto_0
    return-object v0

    .line 543
    :sswitch_0
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 548
    :sswitch_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 553
    :sswitch_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 561
    :sswitch_3
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 567
    :sswitch_4
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    move-object v0, v1

    .line 572
    goto :goto_0

    .line 577
    :sswitch_6
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->density:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mReusableTypedValue:Landroid/util/TypedValue;

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 538
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3 -> :sswitch_6
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x12 -> :sswitch_2
        0x1c -> :sswitch_3
        0x1d -> :sswitch_3
        0x1e -> :sswitch_3
        0x1f -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Object;
    .locals 12
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "index"    # I

    .prologue
    .line 456
    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    invoke-static {v10, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->access$300(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v2, 0x1

    .line 457
    .local v2, "isConstrainedToExplicit":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    invoke-static {v10, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->access$400(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v6, 0x1

    .line 458
    .local v6, "isConstrainedToString":Z
    :goto_1
    if-eqz v2, :cond_3

    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    invoke-static {v10, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->access$500(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v5, 0x1

    .line 459
    .local v5, "isConstrainedToResourceId":Z
    :goto_2
    if-eqz v2, :cond_4

    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    invoke-static {v10, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->access$600(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v4, 0x1

    .line 460
    .local v4, "isConstrainedToInteger":Z
    :goto_3
    if-eqz v2, :cond_5

    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    invoke-static {v10, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->access$700(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    .line 461
    .local v3, "isConstrainedToFloat":Z
    :goto_4
    if-eqz v2, :cond_6

    iget-object v10, p0, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->mConstraints:Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;

    invoke-static {v10, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;->access$800(Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v1, 0x1

    .line 464
    .local v1, "isConstrainedToBoolean":Z
    :goto_5
    const/4 v10, 0x0

    invoke-interface {p2, p3, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v7

    .line 467
    .local v7, "resId":I
    if-eqz v5, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 530
    :cond_0
    :goto_6
    return-object v9

    .line 456
    .end local v1    # "isConstrainedToBoolean":Z
    .end local v2    # "isConstrainedToExplicit":Z
    .end local v3    # "isConstrainedToFloat":Z
    .end local v4    # "isConstrainedToInteger":Z
    .end local v5    # "isConstrainedToResourceId":Z
    .end local v6    # "isConstrainedToString":Z
    .end local v7    # "resId":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 457
    .restart local v2    # "isConstrainedToExplicit":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 458
    .restart local v6    # "isConstrainedToString":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 459
    .restart local v5    # "isConstrainedToResourceId":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 460
    .restart local v4    # "isConstrainedToInteger":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 461
    .restart local v3    # "isConstrainedToFloat":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 470
    .restart local v1    # "isConstrainedToBoolean":Z
    .restart local v7    # "resId":I
    :cond_7
    invoke-interface {p2, p3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, "value":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 475
    :try_start_0
    invoke-direct {p0, p1, v7}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;->resolveResource(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    .line 476
    .local v8, "result":Ljava/lang/Object;
    if-eqz v6, :cond_8

    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 477
    :cond_8
    if-eqz v4, :cond_9

    instance-of v10, v8, Ljava/lang/Integer;

    if-nez v10, :cond_9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    .line 478
    :cond_9
    if-eqz v3, :cond_a

    instance-of v10, v8, Ljava/lang/Float;

    if-nez v10, :cond_a

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_6

    .line 479
    :cond_a
    if-eqz v1, :cond_b

    instance-of v10, v8, Ljava/lang/Boolean;

    if-nez v10, :cond_b

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_6

    :cond_b
    move-object v9, v8

    .line 480
    goto :goto_6

    .line 481
    .end local v8    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error parsing resource as drawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for attribute: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;)V

    .line 483
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    .line 488
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_c
    if-nez v6, :cond_0

    .line 493
    if-eqz v4, :cond_d

    .line 495
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_6

    .line 496
    :catch_1
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6

    .line 502
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    if-eqz v3, :cond_e

    .line 504
    :try_start_2
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    goto/16 :goto_6

    .line 505
    :catch_2
    move-exception v0

    .line 506
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto/16 :goto_6

    .line 511
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    if-eqz v1, :cond_f

    .line 512
    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_6

    .line 517
    :cond_f
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    goto/16 :goto_6

    .line 518
    :catch_3
    move-exception v10

    .line 522
    :try_start_4
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v9

    goto/16 :goto_6

    .line 523
    :catch_4
    move-exception v10

    .line 526
    const-string v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_6

    .line 527
    :cond_10
    const-string v10, "false"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_6
.end method
