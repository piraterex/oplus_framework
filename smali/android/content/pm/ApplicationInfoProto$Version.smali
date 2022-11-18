.class public final Landroid/content/pm/ApplicationInfoProto$Version;
.super Ljava/lang/Object;
.source "ApplicationInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Version"
.end annotation


# static fields
.field public static final greylist-max-o ENABLED:J = 0x10800000001L

.field public static final greylist-max-o MIN_SDK_VERSION:J = 0x10500000002L

.field public static final greylist-max-o TARGET_SANDBOX_VERSION:J = 0x10500000005L

.field public static final greylist-max-o TARGET_SDK_VERSION:J = 0x10500000003L

.field public static final greylist-max-o VERSION_CODE:J = 0x10500000004L


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/ApplicationInfoProto;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ApplicationInfoProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/ApplicationInfoProto;

    .line 11
    iput-object p1, p0, Landroid/content/pm/ApplicationInfoProto$Version;->this$0:Landroid/content/pm/ApplicationInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
