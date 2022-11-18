.class public final Lcom/android/server/usage/ObfuscatedPackagesProto$PackagesMap;
.super Ljava/lang/Object;
.source "ObfuscatedPackagesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/ObfuscatedPackagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackagesMap"
.end annotation


# static fields
.field public static final blacklist PACKAGE_TOKEN:J = 0x10500000001L

.field public static final blacklist STRINGS:J = 0x20900000002L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/usage/ObfuscatedPackagesProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/ObfuscatedPackagesProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/ObfuscatedPackagesProto;

    .line 11
    iput-object p1, p0, Lcom/android/server/usage/ObfuscatedPackagesProto$PackagesMap;->this$0:Lcom/android/server/usage/ObfuscatedPackagesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
