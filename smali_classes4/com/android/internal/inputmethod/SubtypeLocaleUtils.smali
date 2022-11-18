.class public Lcom/android/internal/inputmethod/SubtypeLocaleUtils;
.super Ljava/lang/Object;
.source "SubtypeLocaleUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "localeStr"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    return-object v1

    .line 52
    :cond_0
    const-string v0, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    aget-object v3, v0, v5

    const-string/jumbo v6, "tl"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-string v3, "fil"

    aput-object v3, v0, v5

    .line 63
    :cond_1
    array-length v3, v0

    if-ne v3, v4, :cond_2

    .line 64
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 65
    :cond_2
    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    .line 66
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 67
    :cond_3
    array-length v3, v0

    if-ne v3, v2, :cond_4

    .line 68
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    aget-object v4, v0, v6

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 70
    :cond_4
    return-object v1
.end method
