.class public final Landroid/telephony/AnomalyReporter;
.super Ljava/lang/Object;
.source "AnomalyReporter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AnomalyReporter"

.field private static blacklist sContext:Landroid/content/Context;

.field private static blacklist sDebugPackageName:Ljava/lang/String;

.field private static blacklist sEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    .line 62
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    .line 69
    sput-object v0, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 190
    sget-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 192
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v1, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    const-string v3, "Requires DUMP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    const-string v2, "Yes"

    goto :goto_0

    :cond_1
    const-string v2, "No"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string v1, "Anomaly Counts:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 197
    sget-object v1, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 198
    .local v2, "event":Ljava/util/UUID;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .end local v2    # "event":Ljava/util/UUID;
    goto :goto_1

    .line 200
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 202
    return-void
.end method

.method public static blacklist initialize(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    if-eqz p0, :cond_7

    .line 151
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "This app does not have privileges to send debug events"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sput-object p0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 159
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.action.ANOMALY_REPORTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1c0000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 166
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "AnomalyReporter"

    if-le v2, v3, :cond_2

    .line 167
    const-string v2, "Multiple Anomaly Receivers installed."

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 171
    .local v3, "r":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 172
    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a valid package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v2, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    .line 183
    goto :goto_2

    .line 176
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found package without proper permissions or no activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    goto :goto_0

    .line 186
    .end local v3    # "r":Landroid/content/pm/ResolveInfo;
    :cond_5
    :goto_2
    return-void

    .line 165
    :cond_6
    :goto_3
    return-void

    .line 147
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AnomalyReporter needs a non-null context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventId"    # Ljava/util/UUID;
    .param p1, "description"    # Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public static blacklist reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V
    .locals 8
    .param p0, "eventId"    # Ljava/util/UUID;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "carrierId"    # I

    .line 104
    sget-object v0, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnomalyReporter not yet initialized, dropping event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnomalyReporter"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 109
    :cond_0
    const/16 v2, 0x1cd

    .line 112
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    .line 113
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    .line 109
    move v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIJJ)V

    .line 117
    sget-object v0, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    .local v0, "count":Ljava/lang/Integer;
    sget-object v2, Landroid/telephony/AnomalyReporter;->sEvents:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_2

    return-void

    .line 124
    :cond_2
    sget-object v1, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    return-void

    .line 126
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.telephony.action.ANOMALY_REPORTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "dbgIntent":Landroid/content/Intent;
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const-string v3, "android.telephony.extra.ANOMALY_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    if-eqz p1, :cond_4

    .line 129
    const-string v2, "android.telephony.extra.ANOMALY_DESCRIPTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_4
    sget-object v2, Landroid/telephony/AnomalyReporter;->sDebugPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    sget-object v2, Landroid/telephony/AnomalyReporter;->sContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 133
    return-void
.end method
