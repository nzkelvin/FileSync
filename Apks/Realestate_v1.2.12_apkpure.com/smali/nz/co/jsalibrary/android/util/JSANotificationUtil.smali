.class public final Lnz/co/jsalibrary/android/util/JSANotificationUtil;
.super Ljava/lang/Object;
.source "JSANotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;,
        Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_TEXT:Ljava/lang/String; = "default content text"

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXT_SIZE:F = 11.0f

.field private static final DEFAULT_TITLE_TEXT:Ljava/lang/String; = "default title text"

.field private static sCachedNotificationProperties:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyNotificationProperties(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "titleViewId"    # I
    .param p3, "contentViewIds"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 192
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 194
    :cond_1
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->getCachedNotificationProperties(Landroid/content/Context;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    move-result-object v2

    .line 195
    .local v2, "properties":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->getTitleStyle()Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->getTitleStyle()Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->applyNotificationStyle(Landroid/widget/RemoteViews;ILnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)V

    .line 196
    :cond_2
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->getContentStyle()Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 197
    array-length v6, p3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_3

    aget v0, p3, v5

    .line 198
    .local v0, "contentViewId":I
    invoke-virtual {v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->getContentStyle()Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v7

    invoke-static {p1, v0, v7}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->applyNotificationStyle(Landroid/widget/RemoteViews;ILnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "contentViewId":I
    .end local v2    # "properties":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "exception":Ljava/lang/Exception;
    const-string v5, "error applying notification properties"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Lnz/co/jsalibrary/android/util/JSANotificationUtil;

    aput-object v6, v3, v4

    invoke-static {v5, v1, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    move v3, v4

    .line 202
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_3
    return v3
.end method

.method public static varargs applyNotificationPropertiesForDeviceApiLevel(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "titleViewId"    # I
    .param p3, "contentViewIds"    # [I

    .prologue
    const/4 v1, 0x0

    .line 172
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 176
    :goto_0
    return v1

    .line 173
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->applyNotificationProperties(Landroid/content/Context;Landroid/widget/RemoteViews;I[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "error applying notification properties"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lnz/co/jsalibrary/android/util/JSANotificationUtil;

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static applyNotificationStyle(Landroid/widget/RemoteViews;ILnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)V
    .locals 2
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "style"    # Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .prologue
    .line 212
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 213
    :cond_1
    const-string v0, "setTextSize"

    invoke-virtual {p2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;->getTextSize()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 214
    invoke-virtual {p2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;->getTextColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 215
    return-void
.end method

.method public static getCachedNotificationProperties(Landroid/content/Context;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->sCachedNotificationProperties:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    if-eqz v0, :cond_0

    sget-object v0, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->sCachedNotificationProperties:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    .line 49
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->getNotificationProperties(Landroid/content/Context;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    move-result-object v0

    sput-object v0, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->sCachedNotificationProperties:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    .line 49
    sget-object v0, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->sCachedNotificationProperties:Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    goto :goto_0
.end method

.method public static getNotificationProperties(Landroid/content/Context;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 89
    :cond_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 91
    .local v2, "ntf":Landroid/app/Notification;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "layout":Landroid/widget/LinearLayout;
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, p0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, "group":Landroid/view/ViewGroup;
    new-instance v3, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    invoke-direct {v3}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;-><init>()V

    .line 95
    .local v3, "properties":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    const-string v4, "default title text"

    invoke-static {p0, v0, v4}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->getNotificationTextStyle(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$002(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .line 96
    const-string v4, "default content text"

    invoke-static {p0, v0, v4}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->getNotificationTextStyle(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v4

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$102(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .line 98
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 99
    return-object v3
.end method

.method public static getNotificationPropertiesWithDefaults(Landroid/content/Context;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x1000000

    const/high16 v6, 0x41300000    # 11.0f

    .line 114
    :try_start_0
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->getNotificationProperties(Landroid/content/Context;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    move-result-object v1

    .line 115
    .local v1, "properties":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$000(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;-><init>(FILnz/co/jsalibrary/android/util/JSANotificationUtil$1;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$002(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .line 116
    :cond_0
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$100(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;-><init>(FILnz/co/jsalibrary/android/util/JSANotificationUtil$1;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$102(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    return-object v1

    .line 119
    .end local v1    # "properties":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;

    invoke-direct {v1}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;-><init>()V

    .line 121
    .restart local v1    # "properties":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;
    new-instance v2, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    invoke-direct {v2, v6, v7, v8}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;-><init>(FILnz/co/jsalibrary/android/util/JSANotificationUtil$1;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$002(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    .line 122
    new-instance v2, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    invoke-direct {v2, v6, v7, v8}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;-><init>(FILnz/co/jsalibrary/android/util/JSANotificationUtil$1;)V

    invoke-static {v1, v2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;->access$102(Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationProperties;Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    goto :goto_0
.end method

.method private static getNotificationTextStyle(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 140
    .local v6, "view":Landroid/view/View;
    instance-of v8, v6, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    move-object v5, v6

    .line 141
    check-cast v5, Landroid/widget/TextView;

    .line 142
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 138
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .restart local v5    # "textView":Landroid/widget/TextView;
    .restart local v6    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 144
    .local v4, "textSize":F
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 146
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 147
    iget v8, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v8

    .line 148
    new-instance v3, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-direct {v3, v4, v8, v7}, Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;-><init>(FILnz/co/jsalibrary/android/util/JSANotificationUtil$1;)V

    .line 154
    .end local v1    # "manager":Landroid/view/WindowManager;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v4    # "textSize":F
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :goto_1
    return-object v3

    .line 149
    .restart local v6    # "view":Landroid/view/View;
    :cond_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 150
    check-cast v6, Landroid/view/ViewGroup;

    .end local v6    # "view":Landroid/view/View;
    invoke-static {p0, v6, p2}, Lnz/co/jsalibrary/android/util/JSANotificationUtil;->getNotificationTextStyle(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;

    move-result-object v3

    .line 151
    .local v3, "result":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    if-eqz v3, :cond_0

    goto :goto_1

    .end local v3    # "result":Lnz/co/jsalibrary/android/util/JSANotificationUtil$NotificationTextStyle;
    :cond_3
    move-object v3, v7

    .line 154
    goto :goto_1
.end method
