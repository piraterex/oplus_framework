.class public abstract Landroid/security/keystore/KeyProperties$Purpose;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Purpose"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o allFromKeymaster(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 181
    .local p0, "purposes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 182
    .local v0, "result":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 183
    .local v2, "keymasterPurpose":I
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 184
    .end local v2    # "keymasterPurpose":I
    goto :goto_0

    .line 185
    :cond_0
    return v0
.end method

.method public static greylist-max-o allToKeymaster(I)[I
    .locals 3
    .param p0, "purposes"    # I

    .line 173
    invoke-static {p0}, Landroid/security/keystore/KeyProperties;->-$$Nest$smgetSetFlags(I)[I

    move-result-object v0

    .line 174
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 175
    aget v2, v0, v1

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->toKeymaster(I)I

    move-result v2

    aput v2, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static greylist-max-o fromKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    .line 151
    packed-switch p0, :pswitch_data_0

    .line 167
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_1
    const/16 v0, 0x80

    return v0

    .line 163
    :pswitch_2
    const/16 v0, 0x40

    return v0

    .line 161
    :pswitch_3
    const/16 v0, 0x20

    return v0

    .line 159
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 157
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 155
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 153
    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-o toKeymaster(I)I
    .locals 3
    .param p0, "purpose"    # I

    .line 130
    sparse-switch p0, :sswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown purpose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 142
    :sswitch_1
    const/4 v0, 0x6

    return v0

    .line 140
    :sswitch_2
    const/4 v0, 0x5

    return v0

    .line 138
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 136
    :sswitch_4
    const/4 v0, 0x2

    return v0

    .line 134
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 132
    :sswitch_6
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
