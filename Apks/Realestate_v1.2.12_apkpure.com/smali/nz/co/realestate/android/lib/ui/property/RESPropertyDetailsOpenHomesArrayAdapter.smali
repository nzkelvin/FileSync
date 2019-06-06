.class public final Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;
.super Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;
.source "RESPropertyDetailsOpenHomesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter",
        "<",
        "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
        "Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;",
            ">;",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "homes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    const-class v0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;

    sget v1, Lnz/co/realestate/android/lib/R$layout;->property_details_open_home_row:I

    invoke-direct {p0, v0, p1, v1, p2}, Lnz/co/jsalibrary/android/widget/adapter/JSACustomArrayAdapter;-><init>(Ljava/lang/Class;Landroid/content/Context;ILjava/util/List;)V

    .line 39
    iput-object p3, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;)Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .locals 1
    .param p0, "x0"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->mListing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    return-object v0
.end method

.method public static addOpenHomeToCalendar(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V
    .locals 8
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "mListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v5, v5, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 106
    .local v0, "addressValid":Z
    :goto_0
    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lnz/co/realestate/android/lib/R$string;->open_home:I

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v6, v6, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "title":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_4

    iget-object v4, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->address:Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;

    iget-object v4, v4, Lnz/co/realestate/android/lib/eo/server/object/RESListing$Address;->text:Ljava/util/List;

    new-instance v5, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v5}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v4, v5}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "where":Ljava/lang/String;
    :goto_2
    const-string v4, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v4, "title"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v4, "description"

    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->getOpenHomeDescription(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    if-eqz v3, :cond_0

    const-string v4, "eventLocation"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :cond_0
    const-string v4, "beginTime"

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getStartTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "endTime"

    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    :cond_1
    sget v4, Lnz/co/realestate/android/lib/R$string;->add_to_calendar:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void

    .end local v0    # "addressValid":Z
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :cond_2
    move v0, v4

    .line 105
    goto/16 :goto_0

    .line 106
    .restart local v0    # "addressValid":Z
    :cond_3
    sget v4, Lnz/co/realestate/android/lib/R$string;->open_home:I

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 107
    .restart local v2    # "title":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static addOpenHomeToOpenHomes(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V
    .locals 2
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "mListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    invoke-static {v0, p1, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$AddOpenHomeIntentService;->startService(Landroid/content/Context;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;I)V

    .line 130
    sget v0, Lnz/co/realestate/android/lib/R$string;->open_home_added:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    return-void
.end method

.method public static getOpenHomeDescription(Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;)Ljava/lang/String;
    .locals 5
    .param p0, "mListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

    .prologue
    .line 118
    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->description:Ljava/lang/String;

    invoke-static {v3}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Document;->text()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "description":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->teaser:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;->url:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 120
    .local v1, "lines":[Ljava/lang/String;
    new-instance v3, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v1, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v2

    .line 121
    .local v2, "validLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "\n\n"

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 118
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "validLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget v0, Lnz/co/realestate/android/lib/R$string;->date_at_time:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/util/RESListingUtil;->getOpenHomeDateTimeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onProperty(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;)V
    .locals 10
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "mListing"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v8

    invoke-virtual {v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedOpenHomes()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "cachedOpenHomeTuples":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;>;>;"
    new-instance v8, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;

    invoke-direct {v8}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$FirstTupleItemMapFunction;-><init>()V

    invoke-static {v2, v8}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->map(Ljava/util/Collection;Lnz/co/jsalibrary/android/util/JSAArrayUtil$MapFunction;)Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    .local v3, "cachedOpenHomes":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v1, v7

    .line 75
    .local v1, "cached":Z
    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x32

    if-ge v8, v9, :cond_2

    :cond_0
    move v0, v7

    .line 78
    .local v0, "addable":Z
    :goto_1
    if-eqz v1, :cond_3

    sget v8, Lnz/co/realestate/android/lib/R$string;->remove_from_open_homes:I

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "openHomeItem":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    sget v8, Lnz/co/realestate/android/lib/R$string;->add_to_calendar:I

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    aput-object v5, v4, v7

    .line 80
    .local v4, "items":[Ljava/lang/String;
    new-instance v6, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;

    invoke-direct {v6}, Lnz/co/jsalibrary/android/util/JSAFilterUtil$NonNullFilterFunction;-><init>()V

    invoke-static {v4, v6}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->filter([Ljava/lang/Object;Lnz/co/jsalibrary/android/util/JSAArrayUtil$FilterFunction;)Ljava/util/ArrayList;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArray(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "items":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 83
    .restart local v4    # "items":[Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    new-instance v8, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;

    invoke-direct {v8, p0, p1, p2, v5}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$3;-><init>(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lnz/co/realestate/android/lib/R$string;->cancel:I

    new-instance v8, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$2;

    invoke-direct {v8}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$2;-><init>()V

    .line 91
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 96
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 97
    return-void

    .end local v0    # "addable":Z
    .end local v1    # "cached":Z
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "openHomeItem":Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 74
    goto :goto_0

    .restart local v1    # "cached":Z
    :cond_2
    move v0, v6

    .line 75
    goto :goto_1

    .line 78
    .restart local v0    # "addable":Z
    :cond_3
    if-eqz v0, :cond_4

    sget v8, Lnz/co/realestate/android/lib/R$string;->add_to_open_homes:I

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static removeOpenHomeFromOpenHomes(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/content/Context;)V
    .locals 2
    .param p0, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;->id:I

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/database/util/RESDbUtil$RemoveOpenHomeIntentService;->startService(Landroid/content/Context;I)V

    .line 139
    sget v0, Lnz/co/realestate/android/lib/R$string;->open_home_removed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method protected bridge synthetic updateRow(Lnz/co/jsalibrary/android/widget/adapter/JSACustomRowWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;

    check-cast p2, Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    invoke-virtual {p0, p1, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V

    return-void
.end method

.method protected updateRow(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V
    .locals 3
    .param p1, "wrapper"    # Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;
    .param p2, "home"    # Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;

    .prologue
    .line 49
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;->getOpenHomeText(Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "time":Ljava/lang/String;
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    if-eqz v0, :cond_0

    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->access$000(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    invoke-static {p1}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;->access$200(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$RowWrapper;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;

    invoke-direct {v2, p0, p2}, Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter$1;-><init>(Lnz/co/realestate/android/lib/ui/property/RESPropertyDetailsOpenHomesArrayAdapter;Lnz/co/realestate/android/lib/eo/server/object/RESListing$OpenHome;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 50
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
