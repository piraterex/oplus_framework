.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0
    .param p1, "tableData"    # Lcom/android/internal/app/procstats/SparseMappingTable;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    .line 54
    return-void
.end method

.method private blacklist dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "bucket"    # I
    .param p5, "index"    # I

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    int-to-byte v0, p4

    invoke-virtual {p0, v0, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 180
    const-string v0, " min, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 182
    const-string v0, " avg, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    int-to-byte v0, p4

    add-int/lit8 v1, p5, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 184
    const-string v0, " max"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static blacklist mergeSysMemUsage([JI[JI)V
    .locals 14
    .param p0, "dstData"    # [J
    .param p1, "dstOff"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .line 117
    add-int/lit8 v0, p1, 0x0

    aget-wide v0, p0, v0

    .line 118
    .local v0, "dstCount":J
    add-int/lit8 v2, p3, 0x0

    aget-wide v2, p2, v2

    .line 119
    .local v2, "addCount":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x10

    if-nez v6, :cond_1

    .line 120
    add-int/lit8 v4, p1, 0x0

    aput-wide v2, p0, v4

    .line 121
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 122
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    goto :goto_2

    .line 124
    :cond_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 125
    add-int/lit8 v4, p1, 0x0

    add-long v5, v0, v2

    aput-wide v5, p0, v4

    .line 126
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v7, :cond_4

    .line 127
    add-int v5, p1, v4

    aget-wide v5, p0, v5

    add-int v8, p3, v4

    aget-wide v8, p2, v8

    cmp-long v5, v5, v8

    if-lez v5, :cond_2

    .line 128
    add-int v5, p1, v4

    add-int v6, p3, v4

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    .line 130
    :cond_2
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v8, p0, v6

    long-to-double v8, v8

    long-to-double v10, v0

    mul-double/2addr v8, v10

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, p2, v6

    long-to-double v10, v10

    long-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-long v10, v0, v2

    long-to-double v10, v10

    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, p0, v5

    .line 134
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    aget-wide v5, p0, v5

    add-int v8, p3, v4

    add-int/lit8 v8, v8, 0x2

    aget-wide v8, p2, v8

    cmp-long v5, v5, v8

    if-gez v5, :cond_3

    .line 135
    add-int v5, p1, v4

    add-int/lit8 v5, v5, 0x2

    add-int v6, p3, v4

    add-int/lit8 v6, v6, 0x2

    aget-wide v8, p2, v6

    aput-wide v8, p0, v5

    .line 126
    :cond_3
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 139
    .end local v4    # "i":I
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I

    .line 143
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v0, -0x1

    .line 144
    .local v0, "printedScreen":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "is":I
    :goto_0
    array-length v1, v7

    if-ge v9, v1, :cond_6

    .line 145
    const/4 v1, -0x1

    .line 146
    .local v1, "printedMem":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "im":I
    :goto_1
    array-length v2, v8

    if-ge v10, v2, :cond_5

    .line 147
    aget v11, v7, v9

    .line 148
    .local v11, "iscreen":I
    aget v12, v8, v10

    .line 149
    .local v12, "imem":I
    add-int v2, v11, v12

    mul-int/lit8 v13, v2, 0x10

    .line 150
    .local v13, "bucket":I
    int-to-byte v2, v13

    const/4 v3, 0x0

    move-object/from16 v14, p0

    invoke-virtual {v14, v2, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v4

    .line 151
    .local v4, "count":J
    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-lez v2, :cond_4

    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    array-length v2, v7

    const/4 v15, 0x1

    if-le v2, v15, :cond_1

    .line 154
    if-eq v0, v11, :cond_0

    .line 155
    move v2, v11

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    .line 154
    :goto_2
    invoke-static {v6, v2}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 156
    move v0, v11

    move/from16 v17, v0

    goto :goto_3

    .line 153
    :cond_1
    move/from16 v17, v0

    .line 158
    .end local v0    # "printedScreen":I
    .local v17, "printedScreen":I
    :goto_3
    array-length v0, v8

    if-le v0, v15, :cond_3

    .line 159
    nop

    .line 160
    if-eq v1, v12, :cond_2

    move v15, v12

    goto :goto_4

    :cond_2
    const/4 v15, -0x1

    .line 159
    :goto_4
    invoke-static {v6, v15, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 161
    move v1, v12

    move v15, v1

    goto :goto_5

    .line 158
    :cond_3
    move v15, v1

    .line 163
    .end local v1    # "printedMem":I
    .local v15, "printedMem":I
    :goto_5
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 165
    const-string v0, " samples:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const/16 v16, 0x1

    const-string v3, "  Cached"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v18, v4

    .end local v4    # "count":J
    .local v18, "count":J
    move v4, v13

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 167
    const/4 v5, 0x4

    const-string v3, "  Free"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 168
    const/4 v5, 0x7

    const-string v3, "  ZRam"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 169
    const/16 v5, 0xa

    const-string v3, "  Kernel"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    .line 170
    const/16 v5, 0xd

    const-string v3, "  Native"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move v1, v15

    move/from16 v0, v17

    goto :goto_6

    .line 151
    .end local v15    # "printedMem":I
    .end local v17    # "printedScreen":I
    .end local v18    # "count":J
    .restart local v0    # "printedScreen":I
    .restart local v1    # "printedMem":I
    .restart local v4    # "count":J
    :cond_4
    move-wide/from16 v18, v4

    .line 146
    .end local v4    # "count":J
    .end local v11    # "iscreen":I
    .end local v12    # "imem":I
    .end local v13    # "bucket":I
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v14, p0

    .line 144
    .end local v1    # "printedMem":I
    .end local v10    # "im":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v14, p0

    .line 174
    .end local v9    # "is":I
    return-void
.end method

.method public blacklist getTotalMemUsage()[J
    .locals 7

    .line 94
    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 95
    .local v0, "total":[J
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    .line 96
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v3

    .line 99
    .local v3, "key":I
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 100
    .local v4, "addData":[J
    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 102
    .local v5, "addOff":I
    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 96
    .end local v3    # "key":I
    .end local v4    # "addData":[J
    .end local v5    # "addOff":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public blacklist mergeStats(I[JI)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "addData"    # [J
    .param p3, "addOff"    # I

    .line 82
    int-to-byte v0, p1

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result v0

    .line 84
    .local v0, "key":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v1

    .line 85
    .local v1, "dstData":[J
    invoke-static {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 87
    .local v2, "dstOff":I
    invoke-static {v1, v2, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    .line 88
    return-void
.end method

.method public blacklist mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 6
    .param p1, "that"    # Lcom/android/internal/app/procstats/SysMemUsageTable;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    .line 63
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    .line 66
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 67
    .local v3, "state":I
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 68
    .local v4, "addData":[J
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v5

    .line 70
    .local v5, "addOff":I
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    .line 63
    .end local v2    # "key":I
    .end local v3    # "state":I
    .end local v4    # "addData":[J
    .end local v5    # "addOff":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
