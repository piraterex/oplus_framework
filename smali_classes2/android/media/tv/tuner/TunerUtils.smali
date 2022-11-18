.class public final Landroid/media/tv/tuner/TunerUtils;
.super Ljava/lang/Object;
.source "TunerUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkResourceAccessible(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "accessible"    # Z

    .line 181
    if-eqz p1, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is inaccessible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkResourceState(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "closed"    # Z

    .line 170
    if-nez p1, :cond_0

    .line 173
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getFilterSubtype(II)I
    .locals 9
    .param p0, "mainType"    # I
    .param p1, "subtype"    # I

    .line 41
    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne p0, v8, :cond_0

    .line 42
    packed-switch p1, :pswitch_data_0

    .line 62
    :pswitch_0
    goto :goto_0

    .line 60
    :pswitch_1
    return v0

    .line 56
    :pswitch_2
    return v1

    .line 50
    :pswitch_3
    return v5

    .line 58
    :pswitch_4
    return v2

    .line 54
    :pswitch_5
    return v3

    .line 52
    :pswitch_6
    return v4

    .line 48
    :pswitch_7
    return v7

    .line 46
    :pswitch_8
    return v8

    .line 44
    :pswitch_9
    return v6

    .line 64
    :cond_0
    if-ne p0, v7, :cond_1

    .line 65
    packed-switch p1, :pswitch_data_1

    .line 83
    :pswitch_a
    goto :goto_0

    .line 73
    :pswitch_b
    return v5

    .line 79
    :pswitch_c
    return v1

    .line 81
    :pswitch_d
    return v2

    .line 77
    :pswitch_e
    return v3

    .line 75
    :pswitch_f
    return v4

    .line 71
    :pswitch_10
    return v7

    .line 69
    :pswitch_11
    return v8

    .line 67
    :pswitch_12
    return v6

    .line 86
    :cond_1
    if-ne p0, v4, :cond_2

    .line 87
    sparse-switch p1, :sswitch_data_0

    .line 101
    goto :goto_0

    .line 99
    :sswitch_0
    return v3

    .line 97
    :sswitch_1
    return v4

    .line 95
    :sswitch_2
    return v5

    .line 93
    :sswitch_3
    return v7

    .line 91
    :sswitch_4
    return v8

    .line 89
    :sswitch_5
    return v6

    .line 103
    :cond_2
    if-ne p0, v0, :cond_3

    .line 104
    sparse-switch p1, :sswitch_data_1

    .line 114
    goto :goto_0

    .line 110
    :sswitch_6
    return v7

    .line 112
    :sswitch_7
    return v5

    .line 108
    :sswitch_8
    return v8

    .line 106
    :sswitch_9
    return v6

    .line 116
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 117
    sparse-switch p1, :sswitch_data_2

    goto :goto_0

    .line 123
    :sswitch_a
    return v7

    .line 125
    :sswitch_b
    return v5

    .line 121
    :sswitch_c
    return v8

    .line 119
    :sswitch_d
    return v6

    .line 130
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter types. Main type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subtype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_c
        0xe -> :sswitch_b
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method public static blacklist throwExceptionForResult(ILjava/lang/String;)V
    .locals 3
    .param p0, "r"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string p1, ""

    .line 143
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_1
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: not initialized. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: resource unavailable. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :pswitch_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
