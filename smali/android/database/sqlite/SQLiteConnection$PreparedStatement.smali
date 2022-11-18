.class final Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreparedStatement"
.end annotation


# instance fields
.field public greylist-max-o mInCache:Z

.field public greylist-max-o mInUse:Z

.field public greylist-max-o mNumParameters:I

.field public greylist-max-o mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field public greylist-max-o mReadOnly:Z

.field public greylist-max-o mSql:Ljava/lang/String;

.field public greylist-max-o mStatementPtr:J

.field public greylist-max-o mType:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection$PreparedStatement-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>()V

    return-void
.end method
