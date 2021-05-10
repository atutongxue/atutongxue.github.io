---
layout: default
title: 赏金赛
---


<!-- <script type="text/javascript" src="lib/live.js"></script>
 -->

{% raw %}


<!-- <div class="">
<h1 style="">比赛</h1>
<span style="">这里汇总正在进行的数据科学比赛，方便你选择合适的赛道。</span>
</div> -->


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="lib/bootstrap.min.css" crossorigin="anonymous" />
<link rel="stylesheet" href="app.css" crossorigin="anonymous" />



 

<div id="app"></div>
<script type="text/html" id="app-template">




	<div class="container1  pt-1" style="width:100%">

		<!-- https://getbootstrap.com/docs/4.4/utilities/flex/ -->
		<div class="d-flex p-2">
			<div class=" p-2  flex-grow-1"><h1>赏金赛</h1></div>

			

			


			<div :if="change_result" class="p-2 mt-auto">
				<small class="mb-0 text-muted"> 更新时间: {{ change_result.change_time}}</small>			
			</div>


			<div   class="p-2 mt-auto">
				<div class=" spinner-wrapper">
					<small class="mb-0 text-muted">加载中...</small>	
					<div class="lds-dual-ring"></div>
					 
				</div>
			</div>


			
		</div>

 


 
 
	 

		<dataset
		
		:ds-data="users"
		:ds-filter-fields="{ vendor_name: onlineFilter  }"
		:ds-sortby="[getSortCol]"
		
		 
		:ds-search-in="['race_name', 'brief', 'vendor_name', 'bonus']"
		>

		<div class="row mb-3">
			<div class="col-md-6 mb-2 mb-md-0">
				<div class="btn-group">
					<button type="button" class="btn btn-outline-secondary" :class="[onlineFilter === '' && 'active']" @click.prevent="onlineFilter = ''">
						<span class="badge bg-white text-secondary">{{ users.length }}</span> 全部
					</button>
					<button type="button" class="btn btn-outline-secondary" :class="[onlineFilter === 'tianchi' && 'active']" @click.prevent="onlineFilter = 'tianchi'">
						<span class="badge bg-success text-white">{{ filterList(users, {'vendor_name': 'tianchi'}).length }}</span> 天池
					</button>
					<button type="button" class="btn btn-outline-secondary" :class="[onlineFilter === 'kaggle' && 'active']" @click.prevent="onlineFilter = 'kaggle'">
						<span class="badge bg-warning text-white">{{ filterList(users, {'vendor_name': 'kaggle'}).length }}</span> Kaggle
					</button>


				</div>
			</div>

			<div class="col-md-4 mb-2 mb-md-0">
				<div class="btn-group  ">
					<button type="button" class="btn btn-outline-secondary  " :class="[sortCol === 'cur_season_start' && 'active']" @click="sortCol = 'cur_season_start'; isSortAsc = !isSortAsc">开始日期{{ sortCol == 'cur_season_start' ? (isSortAsc ? '▲ ' : '▼') :'排序' }} 


				</button>
					<button type="button" class="btn btn-outline-secondary  " :class="[sortCol === 'bonus' && 'active']" @click="sortCol = 'bonus'; isSortAsc = !isSortAsc">奖金{{ sortCol == 'bonus' ? (isSortAsc ? '▲' : '▼') :'排序' }}</button>
				</div>
				 
			</div>

			<div class="col-md-2">
				<div class="float-right">
					<dataset-search  ds-search-placeholder="搜索..." />
				</div>
				
			</div>

		</div>

		 




		<div class="row mb-2" style="display: none;">
			<div class="col-md-6 mb-2 mb-md-0" >
				<dataset-show :ds-show-entries=100 />
			</div>

			<div class="col-md-12">
				<div class="float-right">
					<dataset-search  ds-search-placeholder="搜索..." />
				</div>
				
			</div>
		</div>

		<div class="row" >
			<div class="col-md-12">
				<dataset-item class="form-row">
					<template v-slot="{row, rowIndex}"   >
						<div class="col-md-12" >
							<a :href="row.race_url" class="custom-card" target="_blank">
								<div class="card mb-2"  >

									<div class="card-header text-center1">
										<p class="card-text text-truncate mb-0 float-left pre-line"> <b> {{ row.race_name }}</b> </p>
										<div class="float-right align-items-center justify-content-center">
											<img v-if="vendors[row.vendor_name] "  class="img-responsive  img-vendor" :src="vendors[row.vendor_name]['logo_url']" alt="vendor_logo"  >
											 
										</div>
										
									</div>


									<div class="card-body pt-3 pb-2 px-3 row">

										



										<div class="col-md-10">
											<p class="card-text text-truncate1 mb-0"> {{ row.brief }}</p>				
										</div>


										<div class="col-md-2 d-flex align-items-center justify-content-center">
											<p class="card-text  mb-0 "><b class="bonus">{{ row.bonus }}{{row.currency_symbol}}</b></p>
										</div>


									</div>
									<div class="card-footer " style="background-color: white;">
										<div class="progress  ">
											<div class="progress-bar  " role="progressbar"  
											v-bind:style="{ width:  (new Date() - new Date(row.cur_season_start) ) / ( new Date(row.cur_season_end) - new Date(row.cur_season_start)) * 100  + '%' }"
											aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">{{  Math.round(  (new Date() - new Date(row.cur_season_start) ) / ( new Date(row.cur_season_end) - new Date(row.cur_season_start)) * 100  )   }}%</div>

										</div>

										<p class="card-text text-truncate mb-0 float-left pre-line">{{ row.cur_season_start }} - {{ row.cur_season_end }}  </p>
										<p class="card-text text-truncate mb-0 float-right">队伍数 <b>{{ row.team_num }} </b> | 还剩 <b>{{  Math.ceil(Math.abs((new Date(row.cur_season_end) - new Date()) / (24 * 60 * 60 * 1000))) -1 }}</b> 天 </p>

									</div>
								</div>
							</a>
						</div>
						

					</template>
					<template v-slot:noDataFound>
						<div class="col-md-12 pt-2">
							<p class="text-center">未找到结果</p>
						</div>
					</template>
			</dataset-item>
		</div>
	</div>
	<div class="d-flex flex-md-row flex-column justify-content-between align-items-center">
		<div>
			<dataset-info class="mb-2 mb-md-0 " />
		</div>

		<div class="pull-right">
			<dataset-pager class="mb-2 mb-md-0  " />
		</div>

	</div>
</dataset>
</div>
</script>


<script src="lib/jquery-3.5.1.js"> </script>
<script src="lib/vue.js"></script>
<script type="text/javascript" src="./umd/Dataset.js"></script>
<script type="text/javascript" src="./umd/DatasetInfo.js"></script>
<script type="text/javascript" src="./umd/DatasetItem.js"></script>
<script type="text/javascript" src="./umd/DatasetPager.js"></script>
<script type="text/javascript" src="./umd/DatasetSearch.js"></script>
<script type="text/javascript" src="./umd/DatasetShow.js"></script>

<script type="text/javascript">

	const filterList = function (list = [], filter) {
		return list.filter(function (item) {
			for (var key in filter) {
				if (item[key] === undefined || item[key] !== filter[key]) {
					return false;
				}
			}
			return true;
		});
	};




	const app = new Vue({
		el: '#app',
		template: '#app-template',
		data: {
			users: [],
			vendors: {},
			startsWith: '',
			onlineFilter: '',
 
			isSortAsc:false,
			sortCol: 'cur_season_start',
			change_result:{},

			statusClass: {
				Active: 'text-success',
				Away: 'text-warning',
				'Do not disturb': 'text-danger',
				Invisible: 'text-secondary'
			}
		},

		methods:{
			filterList,

		},

		components: {
			Dataset: Dataset,
			DatasetInfo: DatasetInfo,
			DatasetItem: DatasetItem,
			DatasetPager: DatasetPager,
			DatasetSearch: DatasetSearch,
			DatasetShow:  DatasetShow
		},

		computed: {
			sortStarttime () {
				return this.firstNameAsc ? 'cur_season_start' : '-cur_season_start';
			},
			sortDeadline (){
				return this.deadlineAsc ? 'cur_season_end' : '-cur_season_end'; 
			},

			getSortCol(){
				_sortCol = this.sortCol 
				col_asc = _sortCol
				col_dsc  = '-' + _sortCol
				return this.isSortAsc ? col_asc : col_dsc ;

			}



		},

 
		mounted: function () {
			var self = this;
			$.ajax({
				url: 'races.json',
				method: 'GET',
				beforeSend: function() { $(".spinner-wrapper").addClass("loading");    },
				success: function (data) {
					self.users = data.list
					self.change_result = data.change_result[0]
					console.log(data.change_result)
					$(".spinner-wrapper").removeClass("loading");
				},
				error: function (error) {
					console.log(error);
				}
			});

			$.ajax({
				url: 'vendors.json',
				method: 'GET', 
				beforeSend: function() { $(".spinner-wrapper").addClass("loading");    },
				success: function (data) {
					self.vendors = data
					$(".spinner-wrapper").removeClass("loading");
				},
				error: function (error) {
					console.log(error);
				}
			});

 


		}


	});


 

 





</script>


{% endraw %}