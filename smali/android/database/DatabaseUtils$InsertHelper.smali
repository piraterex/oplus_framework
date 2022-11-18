.class public Landroid/database/DatabaseUtils$InsertHelper;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/DatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertHelper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o TABLE_INFO_PRAGMA_COLUMNNAME_INDEX:I = 0x1

.field public static final greylist-max-o TABLE_INFO_PRAGMA_DEFAULT_INDEX:I = 0x4


# instance fields
.field private greylist-max-o mColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private greylist-max-o mInsertSQL:Ljava/lang/String;

.field private greylist-max-o mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private greylist-max-o mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

.field private greylist-max-o mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

.field private final greylist-max-o mTableName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1181
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1182
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1183
    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1206
    iput-object p1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1207
    iput-object p2, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    .line 1208
    return-void
.end method

.method private greylist-max-o buildSQL()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1211
    const-string v0, "\'"

    const-string v1, ")"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1212
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "INSERT INTO "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    iget-object v4, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v4

    .line 1217
    .local v3, "sbv":Ljava/lang/StringBuilder;
    const-string v4, "VALUES ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const/4 v4, 0x1

    .line 1220
    .local v4, "i":I
    const/4 v5, 0x0

    .line 1222
    .local v5, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA table_info("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    .line 1223
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 1224
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1225
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1226
    .local v6, "columnName":Ljava/lang/String;
    const/4 v7, 0x4

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1228
    .local v7, "defaultValue":Ljava/lang/String;
    iget-object v8, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    if-nez v7, :cond_0

    .line 1234
    const-string v8, "?"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1236
    :cond_0
    const-string v8, "COALESCE(?, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ", "

    if-ne v4, v8, :cond_1

    :try_start_1
    const-string v8, ") "

    goto :goto_2

    :cond_1
    move-object v8, v9

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v4, v8, :cond_2

    const-string v9, ");"

    :cond_2
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    nop

    .end local v6    # "columnName":Ljava/lang/String;
    .end local v7    # "defaultValue":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 1244
    goto :goto_0

    .line 1246
    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1249
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1253
    return-void

    .line 1246
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1247
    :cond_5
    throw v0
.end method

.method private greylist-max-o getStatement(Z)Landroid/database/sqlite/SQLiteStatement;
    .locals 3
    .param p1, "allowReplace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1256
    if-eqz p1, :cond_2

    .line 1257
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 1258
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/database/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 1260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "replaceSQL":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1263
    .end local v0    # "replaceSQL":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0

    .line 1265
    :cond_2
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_4

    .line 1266
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/database/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 1267
    :cond_3
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1269
    :cond_4
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method private greylist-max-o insertInternal(Landroid/content/ContentValues;Z)J
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "allowReplace"    # Z

    .line 1292
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1294
    :try_start_0
    invoke-direct {p0, p2}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1295
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1297
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1298
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1299
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1300
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1305
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "i":I
    goto :goto_0

    .line 1306
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    .line 1307
    .local v1, "result":J
    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    nop

    .line 1313
    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1308
    return-wide v1

    .line 1313
    .end local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v1    # "result":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v1, "DatabaseUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into table  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    const-wide/16 v1, -0x1

    .line 1313
    iget-object v3, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1311
    return-wide v1

    .line 1313
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_1
    iget-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1314
    throw v0
.end method


# virtual methods
.method public whitelist bind(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1339
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 1340
    return-void
.end method

.method public whitelist bind(IF)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1349
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 1350
    return-void
.end method

.method public whitelist bind(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1369
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1370
    return-void
.end method

.method public whitelist bind(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1359
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1360
    return-void
.end method

.method public whitelist bind(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1412
    if-nez p2, :cond_0

    .line 1413
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 1415
    :cond_0
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1417
    :goto_0
    return-void
.end method

.method public whitelist bind(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1379
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1380
    return-void
.end method

.method public whitelist bind(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 1398
    if-nez p2, :cond_0

    .line 1399
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 1401
    :cond_0
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1403
    :goto_0
    return-void
.end method

.method public whitelist bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1388
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1389
    return-void
.end method

.method public whitelist close()V
    .locals 2

    .line 1514
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1516
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1518
    :cond_0
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1520
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mReplaceStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1522
    :cond_1
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1523
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    .line 1524
    return-void
.end method

.method public whitelist execute()J
    .locals 5

    .line 1445
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_0

    .line 1451
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1451
    return-wide v2

    .line 1457
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "DatabaseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error executing InsertHelper with table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1454
    const-wide/16 v2, -0x1

    .line 1457
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1454
    return-wide v2

    .line 1457
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_0
    iput-object v1, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1458
    throw v0

    .line 1446
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must prepare this inserter before calling execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    .line 1325
    iget-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1326
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1327
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist insert(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1431
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist prepareForInsert()V
    .locals 1

    .line 1473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1474
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1475
    return-void
.end method

.method public whitelist prepareForReplace()V
    .locals 1

    .line 1489
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/DatabaseUtils$InsertHelper;->getStatement(Z)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroid/database/DatabaseUtils$InsertHelper;->mPreparedStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1490
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1491
    return-void
.end method

.method public whitelist replace(Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 1505
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method
