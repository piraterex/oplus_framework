.class public final Landroid/providers/settings/GlobalSettingsProto$Dropbox;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Dropbox"
.end annotation


# static fields
.field public static final blacklist AGE_SECONDS:J = 0x10b00000001L

.field public static final blacklist MAX_FILES:J = 0x10b00000002L

.field public static final blacklist QUOTA_KB:J = 0x10b00000003L

.field public static final blacklist QUOTA_PERCENT:J = 0x10b00000004L

.field public static final blacklist RESERVE_PERCENT:J = 0x10b00000005L

.field public static final blacklist SETTINGS:J = 0x20b00000006L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 446
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Dropbox;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
