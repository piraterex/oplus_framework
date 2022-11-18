.class Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;
.super Ljava/util/HashMap;
.source "NetworkStatsDataMigrationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string/jumbo v0, "xt"

    const-string v1, "netstats_xt.bin"

    invoke-virtual {p0, v0, v1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "uid"

    const-string v1, "netstats_uid.bin"

    invoke-virtual {p0, v0, v1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v0, "uid_tag"

    invoke-virtual {p0, v0, v1}, Landroid/net/netstats/NetworkStatsDataMigrationUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method
