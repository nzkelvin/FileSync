.class Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Composite"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/DateTimeParser;

.field private final iPrintedLengthEstimate:I

.field private final iPrinters:[Lorg/joda/time/format/DateTimePrinter;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2565
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2566
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2568
    invoke-direct {p0, p1, v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2570
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2571
    iput-object v8, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2572
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    .line 2585
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2586
    iput-object v8, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    .line 2587
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    .line 2599
    :goto_1
    return-void

    .line 2574
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 2575
    new-array v0, v6, [Lorg/joda/time/format/DateTimePrinter;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    move v2, v1

    move v3, v1

    .line 2577
    :goto_2
    if-ge v2, v6, :cond_1

    .line 2578
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimePrinter;

    .line 2579
    invoke-interface {v0}, Lorg/joda/time/format/DateTimePrinter;->estimatePrintedLength()I

    move-result v7

    add-int/2addr v3, v7

    .line 2580
    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    aput-object v0, v7, v2

    .line 2577
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2582
    :cond_1
    iput v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    goto :goto_0

    .line 2589
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 2590
    new-array v0, v3, [Lorg/joda/time/format/DateTimeParser;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    move v2, v1

    .line 2592
    :goto_3
    if-ge v1, v3, :cond_3

    .line 2593
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeParser;

    .line 2594
    invoke-interface {v0}, Lorg/joda/time/format/DateTimeParser;->estimateParsedLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 2595
    iget-object v4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    aput-object v0, v4, v1

    .line 2592
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2597
    :cond_3
    iput v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    goto :goto_1
.end method

.method private addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2730
    if-eqz p2, :cond_0

    .line 2731
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2732
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2735
    :cond_0
    return-void
.end method

.method private decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2707
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2708
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 2709
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2710
    instance-of v3, v0, Lorg/joda/time/format/DateTimePrinter;

    if-eqz v3, :cond_0

    .line 2711
    instance-of v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v3, :cond_2

    .line 2712
    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    invoke-direct {p0, p2, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2718
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2719
    instance-of v3, v0, Lorg/joda/time/format/DateTimeParser;

    if-eqz v3, :cond_1

    .line 2720
    instance-of v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v3, :cond_3

    .line 2721
    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    invoke-direct {p0, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2708
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 2714
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2723
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2727
    :cond_4
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 2678
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 2602
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    return v0
.end method

.method isParser()Z
    .locals 1

    .prologue
    .line 2699
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrinter()Z
    .locals 1

    .prologue
    .line 2695
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 2682
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    .line 2683
    if-nez v1, :cond_0

    .line 2684
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2687
    :cond_0
    array-length v2, v1

    .line 2688
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz p3, :cond_1

    .line 2689
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/DateTimeParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    move-result p3

    .line 2688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2691
    :cond_1
    return p3
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2627
    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2628
    if-nez v9, :cond_0

    .line 2629
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2632
    :cond_0
    if-nez p7, :cond_2

    .line 2634
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2637
    :goto_0
    array-length v10, v9

    .line 2638
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 2639
    aget-object v0, v9, v8

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 2638
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 2641
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2661
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2662
    if-nez v1, :cond_0

    .line 2663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2666
    :cond_0
    if-nez p3, :cond_1

    .line 2668
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 2671
    :cond_1
    array-length v2, v1

    .line 2672
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2673
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 2672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2675
    :cond_2
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 12

    .prologue
    .line 2608
    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2609
    if-nez v9, :cond_0

    .line 2610
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2613
    :cond_0
    if-nez p7, :cond_2

    .line 2615
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2618
    :goto_0
    array-length v10, v9

    .line 2619
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 2620
    aget-object v0, v9, v8

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 2619
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 2622
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 2644
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2645
    if-nez v1, :cond_0

    .line 2646
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2649
    :cond_0
    if-nez p3, :cond_1

    .line 2651
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 2654
    :cond_1
    array-length v2, v1

    .line 2655
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2656
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 2655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2658
    :cond_2
    return-void
.end method
