.class public final Landroid/providers/settings/SecureSettingsProto$Backup;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Backup"
.end annotation


# static fields
.field public static final blacklist AUTO_RESTORE:J = 0x10b00000002L

.field public static final blacklist ENABLED:J = 0x10b00000001L

.field public static final blacklist LOCAL_TRANSPORT_PARAMETERS:J = 0x10b00000006L

.field public static final blacklist MANAGER_CONSTANTS:J = 0x10b00000005L

.field public static final blacklist PACKAGES_TO_CLEAR_DATA_BEFORE_FULL_RESTORE:J = 0x10b00000007L

.field public static final blacklist PROVISIONED:J = 0x10b00000003L

.field public static final blacklist TRANSPORT:J = 0x10b00000004L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 262
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Backup;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
