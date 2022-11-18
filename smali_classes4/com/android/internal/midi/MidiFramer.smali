.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public blacklist TAG:Ljava/lang/String;

.field private blacklist mBuffer:[B

.field private blacklist mCount:I

.field private blacklist mInSysEx:Z

.field private blacklist mNeeded:I

.field private blacklist mReceiver:Landroid/media/midi/MidiReceiver;

.field private blacklist mRunningStatus:B


# direct methods
.method public constructor blacklist <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 36
    const-string v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 46
    return-void
.end method

.method public static blacklist formatMidiData([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int v5, p1, v1

    aget-byte v5, p0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "0x%02X, "

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist onSend([BIIJ)V
    .locals 20
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v1, :cond_0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 64
    .local v1, "sysExStartOffset":I
    :goto_0
    const/4 v2, 0x0

    move v8, v1

    move v9, v2

    move/from16 v1, p2

    .end local p2    # "offset":I
    .local v1, "offset":I
    .local v8, "sysExStartOffset":I
    .local v9, "i":I
    :goto_1
    move/from16 v10, p3

    if-ge v9, v10, :cond_a

    .line 65
    aget-byte v11, p1, v1

    .line 66
    .local v11, "currentByte":B
    and-int/lit16 v12, v11, 0xff

    .line 67
    .local v12, "currentInt":I
    const/16 v2, 0x80

    const/4 v13, 0x0

    const/4 v3, 0x1

    if-lt v12, v2, :cond_6

    .line 68
    const/16 v2, 0xf0

    if-ge v12, v2, :cond_1

    .line 69
    iput-byte v11, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 70
    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 71
    invoke-static {v11}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_3

    .line 72
    :cond_1
    const/16 v4, 0xf8

    if-ge v12, v4, :cond_4

    .line 73
    if-ne v12, v2, :cond_2

    .line 75
    iput-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 76
    move v2, v1

    move v8, v2

    .end local v8    # "sysExStartOffset":I
    .local v2, "sysExStartOffset":I
    goto/16 :goto_3

    .line 77
    .end local v2    # "sysExStartOffset":I
    .restart local v8    # "sysExStartOffset":I
    :cond_2
    const/16 v2, 0xf7

    if-ne v12, v2, :cond_3

    .line 79
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_9

    .line 80
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v4, v1, v8

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 82
    iput-boolean v13, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 83
    const/4 v2, -0x1

    move v8, v2

    .end local v8    # "sysExStartOffset":I
    .restart local v2    # "sysExStartOffset":I
    goto/16 :goto_3

    .line 86
    .end local v2    # "sysExStartOffset":I
    .restart local v8    # "sysExStartOffset":I
    :cond_3
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v11, v2, v13

    .line 87
    iput-byte v13, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 89
    invoke-static {v11}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_3

    .line 93
    :cond_4
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_5

    .line 94
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v5, v1, v8

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 96
    add-int/lit8 v8, v1, 0x1

    move v2, v8

    goto :goto_2

    .line 93
    :cond_5
    move v2, v8

    .line 98
    .end local v8    # "sysExStartOffset":I
    .restart local v2    # "sysExStartOffset":I
    :goto_2
    iget-object v3, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v6, 0x1

    move-object/from16 v4, p1

    move v5, v1

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    move v8, v2

    goto :goto_3

    .line 101
    .end local v2    # "sysExStartOffset":I
    .restart local v8    # "sysExStartOffset":I
    :cond_6
    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v2, :cond_9

    .line 104
    iget v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-gtz v2, :cond_7

    .line 105
    goto :goto_4

    .line 108
    :cond_7
    iget-object v15, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v4, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v11, v15, v4

    .line 109
    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v2, :cond_9

    .line 110
    iget-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v2, :cond_8

    .line 111
    aput-byte v2, v15, v13

    .line 113
    :cond_8
    iget-object v14, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/16 v16, 0x0

    move/from16 v17, v5

    move-wide/from16 v18, p4

    invoke-virtual/range {v14 .. v19}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 114
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v2, v2, v13

    invoke-static {v2}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 115
    iput v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 119
    :cond_9
    :goto_3
    nop

    .end local v11    # "currentByte":B
    .end local v12    # "currentInt":I
    add-int/lit8 v1, v1, 0x1

    .line 64
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 123
    .end local v9    # "i":I
    :cond_a
    :goto_4
    if-ltz v8, :cond_b

    if-ge v8, v1, :cond_b

    .line 124
    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v5, v1, v8

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 127
    :cond_b
    return-void
.end method
