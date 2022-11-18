.class public Lcom/oplus/android/internal/util/OplusFrameworkStatsLog;
.super Ljava/lang/Object;
.source "OplusFrameworkStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final blacklist ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final blacklist OPLUS_MIDASD_ALARM_USAGE:I = 0x186a2

.field public static final blacklist OPLUS_MIDASD_BLUETOOTH_USAGE:I = 0x186a8

.field public static final blacklist OPLUS_MIDASD_CELLULAR_USAGE:I = 0x186a7

.field public static final blacklist OPLUS_MIDASD_CPU_USAGE:I = 0x186a1

.field public static final blacklist OPLUS_MIDASD_GNSS_USAGE:I = 0x186a4

.field public static final blacklist OPLUS_MIDASD_SENSOR_USAGE:I = 0x186a5

.field public static final blacklist OPLUS_MIDASD_WAKELOCK_USAGE:I = 0x186a3

.field public static final blacklist OPLUS_MIDASD_WIFI_USAGE:I = 0x186a6

.field public static final blacklist OPLUS_SKIP_FRAME:I = 0x186a0


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist write(IIIZJFJLjava/lang/String;Ljava/lang/String;JZ)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I
    .param p3, "arg3"    # Z
    .param p4, "arg4"    # J
    .param p6, "arg5"    # F
    .param p7, "arg6"    # J
    .param p9, "arg7"    # Ljava/lang/String;
    .param p10, "arg8"    # Ljava/lang/String;
    .param p11, "arg9"    # J
    .param p13, "arg10"    # Z

    .line 83
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 84
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 85
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 86
    const v1, 0x186a0

    if-ne v1, p0, :cond_0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 89
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 90
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 91
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 92
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 93
    invoke-virtual {v0, p7, p8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 94
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 95
    invoke-virtual {v0, p10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 96
    invoke-virtual {v0, p11, p12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 97
    invoke-virtual {v0, p13}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 101
    return-void
.end method

.method public static blacklist write(IIJJFFJJIJJJ)V
    .locals 16
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # F
    .param p7, "arg5"    # F
    .param p8, "arg6"    # J
    .param p10, "arg7"    # J
    .param p12, "arg8"    # I
    .param p13, "arg9"    # J
    .param p15, "arg10"    # J
    .param p17, "arg11"    # J

    .line 198
    move/from16 v0, p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 199
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 200
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 201
    const v3, 0x186a6

    if-ne v3, v0, :cond_0

    .line 202
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 204
    :cond_0
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 205
    move-wide/from16 v5, p4

    invoke-virtual {v1, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 206
    move/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 207
    move/from16 v8, p7

    invoke-virtual {v1, v8}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 208
    move-wide/from16 v9, p8

    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 209
    move-wide/from16 v11, p10

    invoke-virtual {v1, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 210
    move/from16 v13, p12

    invoke-virtual {v1, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 211
    move-wide/from16 v14, p13

    invoke-virtual {v1, v14, v15}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 212
    move-wide/from16 v2, p15

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 213
    move-wide/from16 v2, p17

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 215
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 216
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-static {v4}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 217
    return-void
.end method

.method public static blacklist write(IIJJFFJJJIJ)V
    .locals 16
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # F
    .param p7, "arg5"    # F
    .param p8, "arg6"    # J
    .param p10, "arg7"    # J
    .param p12, "arg8"    # J
    .param p14, "arg9"    # I
    .param p15, "arg10"    # J

    .line 220
    move/from16 v0, p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 221
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 222
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 223
    const v3, 0x186a7

    if-ne v3, v0, :cond_0

    .line 224
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 226
    :cond_0
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 227
    move-wide/from16 v5, p4

    invoke-virtual {v1, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 228
    move/from16 v7, p6

    invoke-virtual {v1, v7}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 229
    move/from16 v8, p7

    invoke-virtual {v1, v8}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 230
    move-wide/from16 v9, p8

    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 231
    move-wide/from16 v11, p10

    invoke-virtual {v1, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 232
    move-wide/from16 v13, p12

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 233
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 234
    move-wide/from16 v2, p15

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 236
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 237
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-static {v4}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 238
    return-void
.end method

.method public static blacklist write(IIJJIIJJ)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .param p8, "arg6"    # J
    .param p10, "arg7"    # J

    .line 104
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 105
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 106
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 107
    const v1, 0x186a5

    if-ne v1, p0, :cond_0

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 110
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 111
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 112
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 113
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 114
    invoke-virtual {v0, p8, p9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 115
    invoke-virtual {v0, p10, p11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 119
    return-void
.end method

.method public static blacklist write(IIJJIIJLjava/lang/String;J)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .param p8, "arg6"    # J
    .param p10, "arg7"    # Ljava/lang/String;
    .param p11, "arg8"    # J

    .line 122
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 123
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 124
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 125
    const v1, 0x186a2

    if-ne v1, p0, :cond_0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 128
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 129
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 130
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 131
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 132
    invoke-virtual {v0, p8, p9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 133
    invoke-virtual {v0, p10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 134
    invoke-virtual {v0, p11, p12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 137
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 138
    return-void
.end method

.method public static blacklist write(IIJJIJLjava/lang/String;J)V
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # I
    .param p7, "arg5"    # J
    .param p9, "arg6"    # Ljava/lang/String;
    .param p10, "arg7"    # J

    .line 141
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 142
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 143
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 144
    const v1, 0x186a3

    if-ne v1, p0, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 147
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 148
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 149
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 150
    invoke-virtual {v0, p7, p8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 151
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 152
    invoke-virtual {v0, p10, p11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 156
    return-void
.end method

.method public static blacklist write(IIJJJJJ)V
    .locals 3
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # J
    .param p8, "arg5"    # J
    .param p10, "arg6"    # J

    .line 159
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 160
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 161
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 162
    const/4 v1, 0x1

    const v2, 0x186a4

    if-ne v2, p0, :cond_0

    .line 163
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 165
    :cond_0
    const v2, 0x186a8

    if-ne v2, p0, :cond_1

    .line 166
    invoke-virtual {v0, v1, v1}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 168
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 169
    invoke-virtual {v0, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 170
    invoke-virtual {v0, p6, p7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 171
    invoke-virtual {v0, p8, p9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 172
    invoke-virtual {v0, p10, p11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    invoke-static {v1}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 176
    return-void
.end method

.method public static blacklist write(IIJJJJJJJ)V
    .locals 15
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # J
    .param p4, "arg3"    # J
    .param p6, "arg4"    # J
    .param p8, "arg5"    # J
    .param p10, "arg6"    # J
    .param p12, "arg7"    # J
    .param p14, "arg8"    # J

    .line 179
    move v0, p0

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v1

    .line 180
    .local v1, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v1, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 181
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 182
    const v3, 0x186a1

    if-ne v3, v0, :cond_0

    .line 183
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 185
    :cond_0
    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 186
    move-wide/from16 v5, p4

    invoke-virtual {v1, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 187
    move-wide/from16 v7, p6

    invoke-virtual {v1, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 188
    move-wide/from16 v9, p8

    invoke-virtual {v1, v9, v10}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 189
    move-wide/from16 v11, p10

    invoke-virtual {v1, v11, v12}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 190
    move-wide/from16 v13, p12

    invoke-virtual {v1, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 191
    move-wide/from16 v2, p14

    invoke-virtual {v1, v2, v3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 193
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 194
    invoke-virtual {v1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-static {v4}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 195
    return-void
.end method
