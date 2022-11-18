.class Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;
.super Ljava/lang/Object;
.source "BackupManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

.field final synthetic blacklist val$transportName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    .line 1103
    iput-object p1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iput-object p2, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->val$transportName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1106
    iget-object v0, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->this$1:Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    invoke-static {v0}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;->-$$Nest$fgetmListener(Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;)Landroid/app/backup/SelectBackupTransportCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper$1;->val$transportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/backup/SelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V

    .line 1107
    return-void
.end method
