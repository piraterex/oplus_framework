.class public Landroid/database/CursorWrapper;
.super Ljava/lang/Object;
.source "CursorWrapper.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field protected final greylist mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor whitelist <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    return-void
.end method

.method public whitelist copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 146
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 147
    return-void
.end method

.method public whitelist deactivate()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 71
    return-void
.end method

.method public whitelist getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .line 151
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColumnCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public whitelist getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 96
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .line 106
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .line 121
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 126
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .line 131
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getNotificationUri()Landroid/net/Uri;
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNotificationUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getNotificationUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPosition()I
    .locals 1

    .line 211
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .line 136
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 141
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .line 181
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public whitelist getWantsAllOnMoveCalls()Z
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public whitelist getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    .line 49
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public whitelist isAfterLast()Z
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public whitelist isBeforeFirst()Z
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public whitelist isClosed()Z
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public whitelist isFirst()Z
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public whitelist isLast()Z
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public whitelist isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 186
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public whitelist move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 196
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public whitelist moveToFirst()Z
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public whitelist moveToLast()Z
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public whitelist moveToNext()Z
    .locals 1

    .line 206
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public whitelist moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 201
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public whitelist moveToPrevious()Z
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public whitelist registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 221
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 222
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 226
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 227
    return-void
.end method

.method public whitelist requery()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public whitelist respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 237
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 111
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public whitelist setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 242
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 243
    return-void
.end method

.method public whitelist setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p2, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 248
    return-void
.end method

.method public whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 262
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 263
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 267
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 268
    return-void
.end method
