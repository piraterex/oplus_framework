.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static blacklist isCorruptException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "th"    # Ljava/lang/Throwable;

    .line 36
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
