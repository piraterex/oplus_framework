.class public final Landroid/service/notification/ManagedServicesProto$ServiceProto;
.super Ljava/lang/Object;
.source "ManagedServicesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ManagedServicesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceProto"
.end annotation


# static fields
.field public static final greylist-max-o IS_PRIMARY:J = 0x10800000003L

.field public static final greylist-max-o NAME:J = 0x20900000001L

.field public static final greylist-max-o USER_ID:J = 0x10500000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/ManagedServicesProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ManagedServicesProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/notification/ManagedServicesProto;

    .line 11
    iput-object p1, p0, Landroid/service/notification/ManagedServicesProto$ServiceProto;->this$0:Landroid/service/notification/ManagedServicesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
