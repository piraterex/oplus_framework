.class public Landroid/util/KeyValueListParser;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/KeyValueListParser$FloatValue;,
        Landroid/util/KeyValueListParser$StringValue;,
        Landroid/util/KeyValueListParser$LongValue;,
        Landroid/util/KeyValueListParser$IntValue;
    }
.end annotation


# instance fields
.field private final greylist-max-o mSplitter:Landroid/text/TextUtils$StringSplitter;

.field private final greylist-max-o mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(C)V
    .locals 1
    .param p1, "delim"    # C

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    .line 41
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    .line 42
    return-void
.end method


# virtual methods
.method public greylist-max-o getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 145
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 149
    :catch_0
    move-exception v1

    .line 153
    :cond_0
    return p2
.end method

.method public greylist-max-o getDurationMillis(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 203
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 206
    :try_start_0
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 207
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 211
    :catch_0
    move-exception v1

    .line 215
    :cond_2
    return-wide p2
.end method

.method public greylist-max-o getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 113
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 117
    :catch_0
    move-exception v1

    .line 121
    :cond_0
    return p2
.end method

.method public greylist-max-o getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 77
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 81
    :catch_0
    move-exception v1

    .line 85
    :cond_0
    return p2
.end method

.method public greylist-max-o getIntArray(Ljava/lang/String;[I)[I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # [I

    .line 166
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 169
    :try_start_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 171
    array-length v2, v1

    new-array v2, v2, [I

    .line 172
    .local v2, "ret":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 173
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 179
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "ret":[I
    :cond_1
    goto :goto_1

    .line 177
    :catch_0
    move-exception v1

    .line 181
    :cond_2
    :goto_1
    return-object p2
.end method

.method public greylist-max-o getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 95
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 99
    :catch_0
    move-exception v1

    .line 103
    :cond_0
    return-wide p2
.end method

.method public greylist-max-o getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 133
    return-object v0

    .line 135
    :cond_0
    return-object p2
.end method

.method public greylist-max-o keyAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 195
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setString(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-interface {v0, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, "pair":Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 60
    .local v2, "sep":I
    if-ltz v2, :cond_0

    .line 65
    iget-object v3, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v1    # "pair":Ljava/lang/String;
    .end local v2    # "sep":I
    goto :goto_0

    .line 61
    .restart local v1    # "pair":Ljava/lang/String;
    .restart local v2    # "sep":I
    :cond_0
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a valid key-value pair"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    .end local v1    # "pair":Ljava/lang/String;
    .end local v2    # "sep":I
    :cond_1
    return-void
.end method

.method public greylist-max-o size()I
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/util/KeyValueListParser;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method
