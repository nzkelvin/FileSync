.class public Lnz/co/realestate/android/ui/RESStartActivity;
.super Lnz/co/realestate/android/lib/ui/RESStartActivityBase;
.source "RESStartActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lnz/co/realestate/android/lib/ui/RESStartActivityBase;-><init>()V

    return-void
.end method

.method private static buildMapAddressStack(Landroid/app/Activity;Landroid/support/v4/app/TaskStackBuilder;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;
    .param p2, "addressParam"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p2}, Lnz/co/realestate/android/lib/ui/RESSearchFragmentActivity;->getStartActivityIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 85
    return-object p1
.end method

.method private static buildMapLocationStack(Landroid/app/Activity;Landroid/support/v4/app/TaskStackBuilder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;
    .param p2, "homeIntent"    # Landroid/content/Intent;
    .param p3, "latParam"    # Ljava/lang/String;
    .param p4, "lngParam"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 72
    .local v2, "lat":D
    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 73
    .local v6, "lon":D
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v2, v3, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 74
    .local v4, "location":Lcom/google/android/gms/maps/model/LatLng;
    const/16 v5, 0x11

    invoke-static {v4, v5}, Lnz/co/realestate/android/lib/util/RESMapUtil;->getDeviceBounds(Lcom/google/android/gms/maps/model/LatLng;I)Lnz/co/jsalibrary/android/location/JSAGeoBounds;

    move-result-object v0

    .line 75
    .local v0, "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    const/4 v5, 0x0

    invoke-static {p0, v0, v5}, Lnz/co/realestate/android/lib/ui/RESSearchMapActivityBase;->getStartActivityIntentBounds(Landroid/app/Activity;Lnz/co/jsalibrary/android/location/JSAGeoBounds;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "bounds":Lnz/co/jsalibrary/android/location/JSAGeoBounds;
    .end local v2    # "lat":D
    .end local v4    # "location":Lcom/google/android/gms/maps/model/LatLng;
    .end local v6    # "lon":D
    .end local p1    # "builder":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    return-object p1

    .line 77
    .restart local p1    # "builder":Landroid/support/v4/app/TaskStackBuilder;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p1, p2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected resolveStackFromUri(Landroid/net/Uri;)Landroid/support/v4/app/TaskStackBuilder;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 38
    invoke-virtual {p0}, Lnz/co/realestate/android/ui/RESStartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 39
    .local v1, "builder":Landroid/support/v4/app/TaskStackBuilder;
    invoke-static {p0}, Lnz/co/realestate/android/lib/ui/RESHomeFragmentActivity;->getStartActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, "homeIntent":Landroid/content/Intent;
    if-nez p1, :cond_0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    .line 65
    .end local v1    # "builder":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    return-object v1

    .line 42
    .restart local v1    # "builder":Landroid/support/v4/app/TaskStackBuilder;
    :cond_0
    const-string v8, "reapp"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "host":Ljava/lang/String;
    const-string v8, "listing"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    .line 48
    .local v7, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    goto :goto_0

    .line 49
    :cond_2
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 51
    .local v5, "listingId":I
    invoke-static {p0, v5}, Lnz/co/realestate/android/lib/ui/RESPropertyFragmentActivityBase;->getStartActivityIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    goto :goto_0

    .line 57
    .end local v5    # "listingId":I
    .end local v7    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v8, "map"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 58
    const-string v8, "lat"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "latParam":Ljava/lang/String;
    const-string v8, "lng"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "lngParam":Ljava/lang/String;
    const-string v8, "address"

    invoke-virtual {p1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "addressParam":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {p0, v1, v2, v4, v6}, Lnz/co/realestate/android/ui/RESStartActivity;->buildMapLocationStack(Landroid/app/Activity;Landroid/support/v4/app/TaskStackBuilder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {p0, v1, v0}, Lnz/co/realestate/android/ui/RESStartActivity;->buildMapAddressStack(Landroid/app/Activity;Landroid/support/v4/app/TaskStackBuilder;Ljava/lang/String;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    goto :goto_0

    .line 65
    .end local v0    # "addressParam":Ljava/lang/String;
    .end local v4    # "latParam":Ljava/lang/String;
    .end local v6    # "lngParam":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    goto :goto_0
.end method
