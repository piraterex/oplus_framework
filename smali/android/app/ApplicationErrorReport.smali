.class public Landroid/app/ApplicationErrorReport;
.super Ljava/lang/Object;
.source "ApplicationErrorReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationErrorReport$RunningServiceInfo;,
        Landroid/app/ApplicationErrorReport$BatteryInfo;,
        Landroid/app/ApplicationErrorReport$AnrInfo;,
        Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;,
        Landroid/app/ApplicationErrorReport$CrashInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationErrorReport;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEFAULT_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.default"

.field static final greylist-max-o SYSTEM_APPS_ERROR_RECEIVER_PROPERTY:Ljava/lang/String; = "ro.error.receiver.system.apps"

.field public static final whitelist TYPE_ANR:I = 0x2

.field public static final whitelist TYPE_BATTERY:I = 0x3

.field public static final whitelist TYPE_CRASH:I = 0x1

.field public static final whitelist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_RUNNING_SERVICE:I = 0x5


# instance fields
.field public whitelist anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

.field public whitelist batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

.field public whitelist crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public whitelist installerPackageName:Ljava/lang/String;

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist processName:Ljava/lang/String;

.field public whitelist runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

.field public whitelist systemApp:Z

.field public whitelist time:J

.field public whitelist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 669
    new-instance v0, Landroid/app/ApplicationErrorReport$1;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/ApplicationErrorReport;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    return-void
.end method

.method public static whitelist getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appFlags"    # I

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_action_app_error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 166
    .local v0, "enabled":I
    if-nez v0, :cond_0

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 173
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 174
    .local v2, "candidate":Ljava/lang/String;
    const/4 v3, 0x0

    .line 177
    .local v3, "result":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception v4

    .line 182
    :goto_0
    if-eqz v2, :cond_1

    .line 183
    invoke-static {v1, p1, v2}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_1

    .line 185
    return-object v3

    .line 191
    :cond_1
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    .line 192
    const-string/jumbo v4, "ro.error.receiver.system.apps"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-static {v1, p1, v2}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 194
    if-eqz v3, :cond_2

    .line 195
    return-object v3

    .line 200
    :cond_2
    const-string/jumbo v4, "ro.error.receiver.default"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, p1, v2}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    return-object v4
.end method

.method static greylist-max-o getErrorReportReceiver(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "errorPackage"    # Ljava/lang/String;
    .param p2, "receiverPackage"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    return-object v0

    .line 224
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 227
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 228
    :cond_3
    :goto_0
    return-object v0

    .line 216
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 681
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "installerPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "processName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "systemApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 695
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 706
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 704
    goto :goto_0

    .line 700
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 701
    goto :goto_0

    .line 697
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 698
    nop

    .line 709
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ApplicationErrorReport;->time:J

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    .line 269
    .local v0, "hasCrashInfo":Z
    iget v1, p0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 289
    :pswitch_1
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 290
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 291
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 292
    new-instance v1, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    goto :goto_2

    .line 283
    :pswitch_2
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 284
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 285
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 286
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 287
    goto :goto_2

    .line 277
    :pswitch_3
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 278
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 279
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 280
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 281
    goto :goto_2

    .line 271
    :pswitch_4
    if-eqz v0, :cond_2

    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 272
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 273
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 274
    iput-object v2, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 275
    nop

    .line 295
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-wide v0, p0, Landroid/app/ApplicationErrorReport;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget-boolean v0, p0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 255
    :pswitch_1
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 252
    :pswitch_2
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$BatteryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 253
    goto :goto_1

    .line 249
    :pswitch_3
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$AnrInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    goto :goto_1

    .line 244
    :pswitch_4
    iget-object v0, p0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 258
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
