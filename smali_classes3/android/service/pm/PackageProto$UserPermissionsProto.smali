.class public final Landroid/service/pm/PackageProto$UserPermissionsProto;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserPermissionsProto"
.end annotation


# static fields
.field public static final blacklist GRANTED_PERMISSIONS:J = 0x20900000002L

.field public static final blacklist ID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/pm/PackageProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/pm/PackageProto;

    .line 91
    iput-object p1, p0, Landroid/service/pm/PackageProto$UserPermissionsProto;->this$0:Landroid/service/pm/PackageProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
