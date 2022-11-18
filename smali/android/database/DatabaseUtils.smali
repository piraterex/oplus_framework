.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DIGITS:[C

.field public static final whitelist STATEMENT_ABORT:I = 0x6

.field public static final whitelist STATEMENT_ATTACH:I = 0x3

.field public static final whitelist STATEMENT_BEGIN:I = 0x4

.field public static final whitelist STATEMENT_COMMIT:I = 0x5

.field public static final whitelist STATEMENT_DDL:I = 0x8

.field public static final whitelist STATEMENT_OTHER:I = 0x63

.field public static final whitelist STATEMENT_PRAGMA:I = 0x7

.field public static final whitelist STATEMENT_SELECT:I = 0x1

.field public static final whitelist STATEMENT_UNPREPARED:I = 0x9

.field public static final whitelist STATEMENT_UPDATE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static greylist-max-o mColl:Ljava/text/Collator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 600
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/database/DatabaseUtils;->DIGITS:[C

    .line 635
    const/4 v0, 0x0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .line 513
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 516
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 517
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 518
    .local v3, "c":C
    if-ne v3, v0, :cond_0

    .line 519
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    return-void
.end method

.method public static whitelist appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "originalValues"    # [Ljava/lang/String;
    .param p1, "newValues"    # [Ljava/lang/String;

    .line 1611
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1614
    :cond_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1615
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1616
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1617
    return-object v0

    .line 1612
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final whitelist appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 545
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 546
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 547
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 550
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_0
    goto :goto_1

    .line 553
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 555
    :goto_1
    return-void
.end method

.method private static blacklist bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "st"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "bindArgs"    # [Ljava/lang/Object;

    .line 214
    if-nez p1, :cond_0

    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 217
    aget-object v1, p1, v0

    .line 218
    .local v1, "bindArg":Ljava/lang/Object;
    invoke-static {v1}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 233
    :pswitch_0
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 237
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    goto :goto_1

    .line 229
    :pswitch_1
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 230
    goto :goto_2

    .line 226
    :pswitch_2
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 227
    goto :goto_2

    .line 223
    :pswitch_3
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 224
    goto :goto_2

    .line 220
    :pswitch_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 221
    goto :goto_2

    .line 237
    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_2

    .line 239
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 216
    .end local v1    # "bindArg":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .locals 3
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 257
    if-nez p2, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_2

    .line 259
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_6

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 262
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_2

    .line 263
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 264
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 265
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    const-wide/16 v1, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_0

    .line 268
    :cond_3
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 270
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_0
    goto :goto_2

    :cond_4
    instance-of v0, p2, [B

    if-eqz v0, :cond_5

    .line 271
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_2

    .line 273
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 260
    :cond_6
    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 275
    :goto_2
    return-void
.end method

.method public static varargs blacklist bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 13
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/Object;

    .line 290
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 294
    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object p0

    .line 298
    :cond_2
    const/16 v1, 0x20

    .line 299
    .local v1, "before":C
    const/16 v2, 0x20

    .line 301
    .local v2, "after":C
    const/4 v3, 0x0

    .line 302
    .local v3, "argIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 303
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 304
    .local v5, "res":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_b

    .line 305
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 306
    .local v6, "c":C
    if-ne v6, v0, :cond_a

    .line 309
    const/16 v2, 0x20

    .line 313
    move v8, v7

    .line 314
    .local v8, "start":I
    :goto_1
    if-ge v7, v4, :cond_5

    .line 315
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 316
    const/16 v9, 0x30

    if-lt v6, v9, :cond_4

    const/16 v9, 0x39

    if-le v6, v9, :cond_3

    goto :goto_2

    .line 314
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 317
    :cond_4
    :goto_2
    move v2, v6

    .line 321
    :cond_5
    if-eq v8, v7, :cond_6

    .line 322
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 327
    :cond_6
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "argIndex":I
    .local v9, "argIndex":I
    aget-object v3, p1, v3

    .line 328
    .local v3, "arg":Ljava/lang/Object;
    const/16 v10, 0x20

    if-eq v1, v10, :cond_7

    const/16 v11, 0x3d

    if-eq v1, v11, :cond_7

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :cond_7
    invoke-static {v3}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 343
    :pswitch_0
    instance-of v11, v3, Ljava/lang/Boolean;

    if-eqz v11, :cond_8

    .line 346
    move-object v11, v3

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_3

    .line 340
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v10, "Blobs not supported"

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :pswitch_2
    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 338
    goto :goto_4

    .line 334
    :pswitch_3
    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    goto :goto_4

    .line 331
    :pswitch_4
    const-string v11, "NULL"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    goto :goto_4

    .line 346
    :goto_3
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 348
    :cond_8
    const/16 v11, 0x27

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :goto_4
    if-eq v2, v10, :cond_9

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    .end local v3    # "arg":Ljava/lang/Object;
    .end local v8    # "start":I
    :cond_9
    move v6, v7

    move v3, v9

    goto :goto_5

    .line 356
    .end local v9    # "argIndex":I
    .local v3, "argIndex":I
    :cond_a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    move v1, v6

    move v6, v7

    .line 359
    .end local v7    # "i":I
    .local v6, "i":I
    :goto_5
    goto/16 :goto_0

    .line 360
    .end local v6    # "i":I
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1050
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1052
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1052
    return-object v1

    .line 1054
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1055
    throw v1
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1066
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 561
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    return-object p1

    .line 564
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    return-object p0

    .line 568
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "sqlStatements"    # Ljava/lang/String;

    .line 1539
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1543
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, ";\n"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1544
    .local v2, "statements":[Ljava/lang/String;
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1545
    .local v4, "statement":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1546
    :cond_0
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1544
    .end local v4    # "statement":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    :cond_1
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1549
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1550
    return-void
.end method

.method public static whitelist cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 890
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 891
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 892
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 894
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 896
    :goto_0
    return-void
.end method

.method public static whitelist cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1160
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1161
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1162
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1164
    :cond_0
    return-void
.end method

.method public static whitelist cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 877
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public static greylist-max-o cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 438
    if-ltz p1, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_5

    .line 441
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 442
    .local v0, "oldPos":I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 443
    .local v1, "numColumns":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 444
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 445
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 446
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 448
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v2

    if-nez v2, :cond_2

    .line 449
    goto :goto_4

    .line 451
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 452
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    .line 454
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 476
    :pswitch_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {p2, v4, p1, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v5

    goto :goto_2

    .line 468
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 469
    .local v4, "value":[B
    if-eqz v4, :cond_3

    invoke-virtual {p2, v4, p1, v2}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v5

    goto :goto_1

    .line 470
    :cond_3
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    :goto_1
    nop

    .line 471
    .local v5, "success":Z
    goto :goto_3

    .line 464
    .end local v4    # "value":[B
    .end local v5    # "success":Z
    :pswitch_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5, p1, v2}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v5

    .line 465
    .restart local v5    # "success":Z
    goto :goto_3

    .line 460
    .end local v5    # "success":Z
    :pswitch_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5, p1, v2}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v5

    .line 461
    .restart local v5    # "success":Z
    goto :goto_3

    .line 456
    .end local v5    # "success":Z
    :pswitch_4
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    .line 457
    .restart local v5    # "success":Z
    goto :goto_3

    .line 478
    .end local v5    # "success":Z
    .local v4, "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    :goto_2
    nop

    .line 479
    .restart local v5    # "success":Z
    nop

    .line 482
    .end local v4    # "value":Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_5

    .line 483
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 484
    goto :goto_4

    .line 451
    .end local v3    # "type":I
    .end local v5    # "success":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 488
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    :cond_7
    :goto_4
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 491
    return-void

    .line 439
    .end local v0    # "oldPos":I
    .end local v1    # "numColumns":I
    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1144
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1145
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1146
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1148
    :cond_0
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 816
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 829
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 830
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 833
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    :goto_0
    return-void
.end method

.method public static whitelist cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1128
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1129
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1132
    :cond_0
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 846
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 859
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 860
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 862
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_0

    .line 864
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 866
    :goto_0
    return-void
.end method

.method public static whitelist cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1096
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1097
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1100
    :cond_0
    return-void
.end method

.method public static greylist cursorPickFillWindowStartPosition(II)I
    .locals 2
    .param p0, "cursorPosition"    # I
    .param p1, "cursorWindowCapacity"    # I

    .line 940
    div-int/lit8 v0, p1, 0x3

    sub-int v0, p0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 905
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "columns":[Ljava/lang/String;
    array-length v1, v0

    .line 907
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 908
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 909
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 911
    :cond_0
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static whitelist cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1112
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1113
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 1116
    :cond_0
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 779
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 805
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-void
.end method

.method public static whitelist cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1080
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1081
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_0
    return-void
.end method

.method public static whitelist cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Landroid/database/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    .line 792
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 793
    return-void
.end method

.method public static blacklist deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0, "args"    # [Ljava/lang/Object;

    .line 370
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 373
    .local v0, "res":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 374
    aget-object v2, p0, v1

    .line 376
    .local v2, "arg":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_3

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 379
    :cond_1
    instance-of v3, v2, [B

    if-eqz v3, :cond_2

    .line 381
    move-object v3, v2

    check-cast v3, [B

    .line 382
    .local v3, "castArg":[B
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    aput-object v4, v0, v1

    .line 383
    .end local v3    # "castArg":[B
    goto :goto_2

    .line 385
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 378
    :cond_3
    :goto_1
    aput-object v2, v0, v1

    .line 373
    .end local v2    # "arg":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 707
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 708
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 717
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "cols":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 719
    array-length v1, v0

    .line 720
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 723
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 724
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 727
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    move-object v3, v4

    .line 729
    .local v3, "value":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 720
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 741
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "cols":[Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    array-length v1, v0

    .line 744
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 747
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 748
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 751
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    move-object v3, v4

    .line 753
    .local v3, "value":Ljava/lang/String;
    :goto_1
    const-string v4, "   "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    return-void
.end method

.method public static whitelist dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 643
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 644
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> Dumping cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 655
    if-eqz p0, :cond_1

    .line 656
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 658
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 659
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 662
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 664
    .end local v0    # "startPos":I
    :cond_1
    const-string v0, "<<<<<"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 675
    const-string v0, ">>>>> Dumping cursor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    if-eqz p0, :cond_1

    .line 677
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 679
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 680
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 685
    .end local v0    # "startPos":I
    :cond_1
    const-string v0, "<<<<<\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    return-void
.end method

.method public static whitelist dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 698
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o encodeHex([B)[C
    .locals 7
    .param p0, "input"    # [B

    .line 606
    array-length v0, p0

    .line 607
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 610
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 611
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    .line 612
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    return-object v1
.end method

.method public static blacklist escapeForLike(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1641
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1642
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1643
    .local v2, "c":C
    const/16 v3, 0x5c

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 1646
    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1644
    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1645
    nop

    .line 1649
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1641
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1651
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 198
    .local v0, "st":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 199
    :cond_0
    return-wide v1

    .line 197
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static blacklist executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 207
    .local v0, "st":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 208
    :cond_0
    return v1

    .line 206
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static greylist-max-o findRowIdColumnIndex([Ljava/lang/String;)I
    .locals 4
    .param p0, "columnNames"    # [Ljava/lang/String;

    .line 1625
    array-length v0, p0

    .line 1626
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1627
    aget-object v2, p0, v1

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1628
    return v1

    .line 1626
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1631
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 577
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 579
    .local v0, "arr":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v3

    const-string v4, "ISO8859_1"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    return-object v2
.end method

.method private static greylist-max-o getCollationKeyInBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 628
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 632
    :cond_0
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 591
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 592
    .local v0, "arr":[B
    invoke-static {v0}, Landroid/database/DatabaseUtils;->encodeHex([B)[C

    move-result-object v1

    .line 593
    .local v1, "keys":[C
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static greylist-max-o getKeyLen([B)I
    .locals 1
    .param p0, "arr"    # [B

    .line 619
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 620
    array-length v0, p0

    return v0

    .line 623
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static whitelist getSqlStatementType(Ljava/lang/String;)I
    .locals 5
    .param p0, "sql"    # Ljava/lang/String;

    .line 1567
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1568
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 1569
    return v1

    .line 1571
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    .local v0, "prefixSql":Ljava/lang/String;
    const-string v3, "SEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1573
    const/4 v1, 0x1

    return v1

    .line 1574
    :cond_1
    const-string v3, "INS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1575
    const-string v3, "UPD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1576
    const-string v3, "REP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1577
    const-string v3, "DEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 1579
    :cond_2
    const-string v3, "ATT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1580
    return v2

    .line 1581
    :cond_3
    const-string v2, "COM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_4

    .line 1582
    return v3

    .line 1583
    :cond_4
    const-string v2, "END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1584
    return v3

    .line 1585
    :cond_5
    const-string v2, "ROL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1586
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " TO "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1587
    .local v2, "isRollbackToSavepoint":Z
    if-eqz v2, :cond_6

    .line 1588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Statement \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' may not work on API levels 16-27, use \';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DatabaseUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return v1

    .line 1592
    :cond_6
    const/4 v1, 0x6

    return v1

    .line 1593
    .end local v2    # "isRollbackToSavepoint":Z
    :cond_7
    const-string v2, "BEG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1594
    const/4 v1, 0x4

    return v1

    .line 1595
    :cond_8
    const-string v2, "PRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1596
    const/4 v1, 0x7

    return v1

    .line 1597
    :cond_9
    const-string v2, "CRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "DRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1598
    const-string v2, "ALT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 1600
    :cond_a
    const-string v2, "ANA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "DET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_0

    .line 1603
    :cond_b
    return v1

    .line 1601
    :cond_c
    :goto_0
    const/16 v1, 0x9

    return v1

    .line 1599
    :cond_d
    :goto_1
    const/16 v1, 0x8

    return v1

    .line 1578
    :cond_e
    :goto_2
    const/4 v1, 0x2

    return v1
.end method

.method public static greylist-max-p getTypeOfObject(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 410
    if-nez p0, :cond_0

    .line 411
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 413
    const/4 v0, 0x4

    return v0

    .line 414
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 416
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 420
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 418
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 415
    :cond_5
    :goto_1
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1003
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1005
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1005
    return-wide v1

    .line 1007
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1008
    throw v1
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .locals 2
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1016
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o queryIsEmpty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select exists(select 1 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 995
    .local v0, "isEmpty":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 950
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .line 963
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 981
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 982
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select count(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final whitelist readExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p0, "reply"    # Landroid/os/Parcel;

    .line 139
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 140
    .local v0, "code":I
    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method private static final greylist-max-o readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .locals 1
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 170
    packed-switch p2, :pswitch_data_0

    .line 190
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 192
    return-void

    .line 188
    :pswitch_1
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0, p1}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_3
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_4
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_5
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_6
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_7
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 148
    .local v0, "code":I
    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 153
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 155
    return-void

    .line 151
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 160
    .local v0, "code":I
    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "msg":Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 165
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 167
    return-void

    .line 163
    :cond_1
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v0, "escaper":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1025
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1027
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1027
    return-object v1

    .line 1029
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1030
    throw v1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1038
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .locals 5
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "code":I
    const/4 v1, 0x1

    .line 92
    .local v1, "logException":Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    const-string v3, "Writing exception to parcel"

    const-string v4, "DatabaseUtils"

    if-eqz v2, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 94
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :cond_0
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_1

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_1
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_2

    .line 98
    const/4 v0, 0x3

    goto :goto_0

    .line 99
    :cond_2
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v2, :cond_3

    .line 100
    const/4 v0, 0x4

    goto :goto_0

    .line 101
    :cond_3
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_4

    .line 102
    const/4 v0, 0x5

    goto :goto_0

    .line 103
    :cond_4
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_5

    .line 104
    const/4 v0, 0x6

    goto :goto_0

    .line 105
    :cond_5
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_6

    .line 106
    const/4 v0, 0x7

    goto :goto_0

    .line 107
    :cond_6
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v2, :cond_7

    .line 108
    const/16 v0, 0x8

    goto :goto_0

    .line 109
    :cond_7
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_8

    .line 110
    const/16 v0, 0x9

    goto :goto_0

    .line 111
    :cond_8
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_9

    .line 112
    const/16 v0, 0xa

    goto :goto_0

    .line 113
    :cond_9
    instance-of v2, p1, Landroid/os/OperationCanceledException;

    if-eqz v2, :cond_b

    .line 114
    const/16 v0, 0xb

    .line 115
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    if-eqz v1, :cond_a

    .line 125
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_a
    return-void

    .line 117
    :cond_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 118
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return-void
.end method
