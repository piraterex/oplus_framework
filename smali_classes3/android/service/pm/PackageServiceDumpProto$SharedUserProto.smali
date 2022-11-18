.class public final Landroid/service/pm/PackageServiceDumpProto$SharedUserProto;
.super Ljava/lang/Object;
.source "PackageServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SharedUserProto"
.end annotation


# static fields
.field public static final blacklist NAME:J = 0x10900000002L

.field public static final blacklist UID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/pm/PackageServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageServiceDumpProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/pm/PackageServiceDumpProto;

    .line 39
    iput-object p1, p0, Landroid/service/pm/PackageServiceDumpProto$SharedUserProto;->this$0:Landroid/service/pm/PackageServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
