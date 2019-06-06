.class public Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;
.super Ljava/lang/Object;
.source "JSAPreferenceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteSharedPreferenceRunable"
.end annotation


# instance fields
.field private mBooleanValue:Ljava/lang/Boolean;

.field private mFloatValue:Ljava/lang/Float;

.field private mIntValue:Ljava/lang/Integer;

.field private final mKey:Ljava/lang/String;

.field private mLongValue:Ljava/lang/Long;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private mStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 158
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mPrefs:Landroid/content/SharedPreferences;

    .line 159
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    .line 160
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mFloatValue:Ljava/lang/Float;

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 165
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mPrefs:Landroid/content/SharedPreferences;

    .line 166
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mIntValue:Ljava/lang/Integer;

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 172
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mPrefs:Landroid/content/SharedPreferences;

    .line 173
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    .line 174
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mLongValue:Ljava/lang/Long;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 179
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mPrefs:Landroid/content/SharedPreferences;

    .line 180
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mStringValue:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :cond_1
    iput-object p1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mPrefs:Landroid/content/SharedPreferences;

    .line 152
    iput-object p2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    .line 153
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mBooleanValue:Ljava/lang/Boolean;

    .line 154
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mBooleanValue:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mBooleanValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mFloatValue:Ljava/lang/Float;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mFloatValue:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mIntValue:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mIntValue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 189
    :cond_2
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mLongValue:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mLongValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 190
    :cond_3
    iget-object v1, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil$WriteSharedPreferenceRunable;->mStringValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
